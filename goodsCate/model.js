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
    console.log(tutorial)
    if (tutorial.type !== undefined) return this.findById(tutorial.type, result)
    let m = (tutorial.page - 1) * tutorial.pageSize || 0
    let n = tutorial.pageSize || 10
    let sqlText = JSON.stringify(tutorial) == '{}' ? `SELECT * FROM huahan_web_cate ORDER BY FIELD(setTop,0,1,2,3,4,5) DESC, type DESC` : `SELECT * FROM huahan_web_cate ORDER BY FIELD(setTop,0,1,2,3,4,5) DESC, type DESC limit ${m},${n}; SELECT FOUND_ROWS() FROM huahan_web_cate`
    sql.query(sqlText, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log('huahan_web_cate', res)
      // sql.query(`SELECT FOUND_ROWS() FROM web_condition WHERE type=${tutorial.type}`, (errRows, rows) => {
      //   // console.log(rows.length)
      let sendRes = JSON.stringify(tutorial) == '{}' ? { res } : { res: res[0], total: res[1].length }
      result(null, sendRes)
      // })
      // result(null, {list: res, total})
    })
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
    sql.query(`SELECT * FROM huahan_web_cate WHERE setTop is not null`, (err, topRes) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }

      let TopNumArr = topRes.map(item => item.setTop)

      let cancelTopArr = []
      // 如果没有置顶项 则直接置顶本次提交的数据
      if (TopNumArr.length) {
        // 判断置顶标记是否被占用
        tutorial.forEach((item, flag) => {
          if (TopNumArr.indexOf(flag) !== -1) {
            // 存储需要取消置顶的数据
            cancelTopArr.push(TopNumArr[flag])
          }
        });
        // console.log('收到后登记卡萨汇顶科技暗杀很大：', cancelTopArr)
        // 取消原置顶项
        let strCancelTop = ''
        cancelTopArr.forEach(item => {
          strCancelTop += `WHEN ${item} THEN null `
        })
        console.log('strCancelTop:', strCancelTop)
        // console.log(TopNumArr)
        sql.query(`UPDATE huahan_web_cate SET setTop = CASE setTop ${strCancelTop}END WHERE FIND_IN_SET(setTop,"${cancelTopArr.join(',')}")`, (err, res) => {
          if (err) {
            console.log("error: ", err)
            result(err, null)
            return
          }
        })
      }
      // 设置当前置顶项
      let strSetTop = ''
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
