const sql = require('../model/db')
const { getFrontId, getBehindId } = require('../utils/getAdjoinById')

class Tutorial {
  constructor() {
    // this.page = page,
    // this.pageSize = pageSize
  }

}

Object.assign(Tutorial.prototype, {
  // 添加
  create(newTutorial, result) {
    console.log(newTutorial)
    sql.query('INSERT INTO huahan_web_goods SET ?', newTutorial, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("create huahan_web_goods: ", { id: res.insertId, ...newTutorial })
      result(null, { id: res.insertId, ...newTutorial })
    })
  },
  // 获取
  getAll(tutorial, result) {
    console.log(tutorial)
    if (tutorial.id !== undefined) return this.findById(tutorial.id, result)

    sql.query(`SELECT FOUND_ROWS() FROM huahan_web_goods`, (totalErr, totalRes) => {
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
      let sqlText = tutorial.type === null || tutorial.type === undefined ? `SELECT * FROM huahan_web_goods ORDER BY FIELD(setTop,${totalArr.length ? totalArr.join(',') : "''"}) DESC, id DESC limit ${m},${n}; SELECT FOUND_ROWS() FROM huahan_web_goods` : `SELECT * FROM huahan_web_goods WHERE type=${tutorial.type} ORDER BY FIELD(setTop,${totalArr.length ? totalArr.join(',') : "''"}) DESC, id DESC limit ${m},${n}; SELECT FOUND_ROWS() FROM huahan_web_goods WHERE type=${tutorial.type}`
      sql.query(sqlText, (err, res) => {
        if (err) {
          console.log("error: ", err)
          result(err, null)
          return
        }
        console.log('huahan_web_goods', res)
        // sql.query(`SELECT FOUND_ROWS() FROM web_condition WHERE type=${tutorial.type}`, (errRows, rows) => {
        //   // console.log(rows.length)
        result(null, { res: res[0], total: res[1].length })
        // })
        // result(null, {list: res, total})
      })

    })


  },
  // 根据id获取
  findById(id, result) {
    sql.query(`SELECT * FROM huahan_web_goods WHERE id = ${id}`, (err, res) => {
      console.log(res)
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      if (res.length) {
        // 查询前一条数据
        let frontId = getFrontId(id, 'huahan_web_goods')
        // 查询后一条数据
        let behindId = getBehindId(id, 'huahan_web_goods')
        Promise.all([frontId, behindId]).then(value => {
          result(null, { res: res[0], frontId: value[0], behindId: value[1] })
        }).catch(() => {
          result(null, { res: res[0], frontId: null, behindId: null })
        })
        console.log("found huahan_web_goods: ", res[0])
        return
      }
      result({ kind: "not_found" }, null)
    })
  },
  // 修改
  updateById(newTutorial, result) {
    sql.query(`UPDATE huahan_web_goods SET ? WHERE id=${newTutorial.id}`, newTutorial, (err, res) => {
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
      console.log("updated huahan_web_goods: ", { ...newTutorial })
      result(null, { ...newTutorial })
    })
  },
  // 删除
  deleteById(id, result) {
    sql.query(`DELETE FROM huahan_web_goods WHERE id=${id}`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("delete huahan_web_goods: ", { id })
      result(null, { id })
    })
  },

  // 排序置顶
  topGoods(tutorial, result) {
    // 取出所有置顶数据
    sql.query(`SELECT * FROM huahan_web_goods WHERE setTop is not null`, (err, topRes, fields) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }

      let TopNumArr = topRes.map(item => item.id)

      let disCancelTopArr = []
      // 如果没有置顶项 则直接置顶本次提交的数据
      if (TopNumArr.length) {
        // 判断置顶标记是否被占用
        TopNumArr.forEach((item, index) => {
          if (tutorial.indexOf(item) === -1) {
            // 存储需要取消置顶的数据
            disCancelTopArr.push(TopNumArr[index])
          }
        });
        // console.log('收到后登记卡萨汇顶科技暗杀很大：', cancelTopArr)
        // // 取消原置顶项
        // let strCancelTop = ''
        // cancelTopArr.forEach(item => {
        //   strCancelTop += `WHEN ${item} THEN null `
        // })
        // console.log('strCancelTop:', strCancelTop)
        // // console.log(TopNumArr)
        // sql.query(`UPDATE huahan_web_goods SET setTop = CASE setTop ${strCancelTop}END WHERE FIND_IN_SET(setTop,"${cancelTopArr.join(',')}")`, (err, res) => {
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
      tutorial.forEach((item, index) => {
        strSetTop += `WHEN ${item} THEN ${index} `
      })
      sql.query(`UPDATE huahan_web_goods SET setTop = CASE id ${strSetTop}END WHERE FIND_IN_SET(id,"${tutorial.join(',')}")`, (err, res) => {
        if (err) {
          console.log("error: ", err)
          result(err, null)
          return
        }
        console.log('本次置顶id：', tutorial)
        // console.log('本次置顶id：', res)
        result(null, tutorial)
      })
    })
  }
})

module.exports = Tutorial
