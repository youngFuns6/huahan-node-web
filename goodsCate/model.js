const sql = require('../model/db')


class Tutorial {
  constructor() {
    // this.page = page,
    // this.pageSize = pageSize
  }

}

Object.assign(Tutorial.prototype, {
  // 添加
  create(newTutorial, result) {
    // console.log(newTutorial)
    sql.query('INSERT INTO huahan_web_cate SET ?', newTutorial, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log('jjjjjjj', res)
      console.log("create huahan_web_cate: ", { type: res.insertId, ...newTutorial })
      result(null, { type: res.insertId, ...newTutorial })
    })
  },
  // 获取
  getAll(tutorial, result) {
    // console.log(tutorial)
    if (tutorial.type !== undefined) return this.findById(tutorial.type, result)
    // 获取数据总条数
    // let totalArr = []
    sql.query(`SELECT FOUND_ROWS() FROM huahan_web_cate`, (totalErr, totalRes) => {
      if (totalErr) {
        console.log("error: ", totalErr)
        result(totalErr, null)
        return
      }
      let totalArr = totalRes.map((item, index) => {
        return index
      })

      let m = (tutorial.page - 1) * tutorial.pageSize || 0
      let n = tutorial.pageSize || 10
      let sqlText = JSON.stringify(tutorial) == '{}' ? `SELECT * FROM huahan_web_cate ORDER BY FIELD(setTop, ${totalArr.length ? totalArr.join(',') : "''"}) DESC, type DESC` : `SELECT * FROM huahan_web_cate ORDER BY FIELD(setTop,${totalArr.length ? totalArr.join(',') : "''"}) DESC, type DESC limit ${m},${n}`
      sql.query(sqlText, (err, res) => {
        if (err) {
          console.log("error: ", err)
          result(err, null)
          return
        }
        console.log('huahan_web_cate', res)
        // sql.query(`SELECT FOUND_ROWS() FROM web_condition WHERE type=${tutorial.type}`, (errRows, rows) => {
        //   // console.log(rows.length)
        let sendRes = JSON.stringify(tutorial) == '{}' ? { res } : { res: res, total: totalArr.length }
        result(null, sendRes)
        // })
        // result(null, {list: res, total})
      })
      
    })
   
    // console.log(totalArr)
    
  },
  // 根据id获取
  findById(type, result) {
    sql.query(`SELECT * FROM huahan_web_cate WHERE type = ${type}`, (err, res) => {
      console.log(res)
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      if (res.length) {
        console.log("found huahan_web_cate: ", res[0])
        result(null, { res: res[0] })
        return
      }
      result({ kind: "not_found" }, null)
    })
  },
  // 修改
  updateById(newTutorial, result) {
    sql.query(`UPDATE huahan_web_cate SET ? WHERE type=${newTutorial.type}`, newTutorial, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      if (res.affectedRows == 0) {
        // not found Tutorial with the id
        result({ kind: "not_found" }, null);
        return;
      }
      console.log("updated huahan_web_cate: ", { ...newTutorial })
      result(null, { ...newTutorial })
    })
  },
  // 删除
  deleteById(type, result) {
    sql.query(`select * from huahan_web_goods where type = (select type from huahan_web_cate where type=${type})`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log('huahan_web_cate goods', res)
      if (res.length) {
        result(err, { res, type })
        return
      } else {
        sql.query(`DELETE FROM huahan_web_cate WHERE type=${type}`, (err, res) => {
          if (err) {
            console.log("error: ", err)
            result(err, null)
            return
          }
          console.log("delete huahan_web_cate: ", { type })
          result(null, { type })
        })
      }
    })

  },

  // 排序置顶
  topGoodsCate(tutorial, result) {
    // 取出所有置顶数据
    sql.query(`SELECT * FROM huahan_web_cate WHERE setTop is not null`, (topErr, topRes) => {
      if (topErr) {
        console.log("error: ", topErr)
        result(topErr, null)
        return
      }

      let TopNumArr = topRes.map(item => item.type)
      console.log('黄金卡德哈卡是的哈卡', TopNumArr)

      let disCancelTopArr = []
      // let cancelTopArr = []
      // // 如果没有置顶项 则直接置顶本次提交的数据
      if (TopNumArr.length) {
        // 判断置顶标记是否被占用
        TopNumArr.forEach((item, index) => {
          if (tutorial.indexOf(item) === -1) {
            // 存储需要取消置顶的数据
            disCancelTopArr.push(TopNumArr[index])
            // console.log('试试实话实说', TopNumArr[index])
            // TopNumArr.splice(flag, 1)
          }
          // else {
          //   cancelTopArr.push(TopNumArr[item])
          // }
        });
        // console.log('收到后登记卡萨汇顶科技暗杀很大：', cancelTopArr)
        // 取消原置顶项
        // let strCancelTop = ''
        // cancelTopArr.forEach(item => {
        //   strCancelTop += `WHEN ${item} THEN null `
        // })
        // console.log('strCancelTop:', strCancelTop)
        // console.log(TopNumArr)
        // sql.query(`UPDATE huahan_web_cate SET setTop = CASE setTop ${strCancelTop}END WHERE FIND_IN_SET(setTop,"${cancelTopArr.join(',')}")`, (err, res) => {
        //   if (err) {
        //     console.log("error: ", err)
        //     result(err, null)
        //     return
        //   }
        // })
      }
      // 设置当前置顶项
      let strSetTop = ''
      tutorial.unshift(...disCancelTopArr)
      // console.log('加上就嗲绝对是', disCancelTopArr)
      // tutorial = unique(tutorial)
      tutorial.forEach((item, index) => {
        strSetTop += `WHEN ${item} THEN ${index} `
      })
      sql.query(`UPDATE huahan_web_cate SET setTop = CASE type ${strSetTop}END WHERE FIND_IN_SET(type,"${tutorial.join(',')}")`, (err, res) => {
        if (err) {
          console.log("error: ", err)
          result(err, null)
          return
        }
        console.log('本次置顶type：', tutorial)
        // console.log('本次置顶id：', res)
        result(null, tutorial)
      })
    })
  }
})

module.exports = Tutorial
