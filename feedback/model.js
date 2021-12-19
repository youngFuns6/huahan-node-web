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
    console.log(newTutorial)
    sql.query('INSERT INTO huahan_web_feedback SET ?', newTutorial, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("create huahan_web_feedback: ", { id: res.insertId, ...newTutorial })
      result(null, { id: res.insertId, ...newTutorial })
    })
  },
  // 获取
  getAll(tutorial, result) {
    console.log(tutorial)
    let m = (tutorial.page - 1) * tutorial.pageSize || 0
    let n = tutorial.pageSize || 10
    let sqlText = `SELECT * FROM huahan_web_feedback ORDER BY id DESC limit ${m},${n}; SELECT FOUND_ROWS() FROM huahan_web_feedback`
    sql.query(sqlText, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log('huahan_web_feedback', res)
      // sql.query(`SELECT FOUND_ROWS() FROM web_condition WHERE type=${tutorial.type}`, (errRows, rows) => {
      //   // console.log(rows.length)
        result(null, {res: res[0], total: res[1].length})
      // })
      // result(null, {list: res, total})
    })
  },
 
  // 删除
  deleteById(id, result) {
    sql.query(`DELETE FROM huahan_web_feedback WHERE id=${id}`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("delete huahan_web_feedback: ", {id})
      result(null, {id})
    })
  }
})

module.exports = Tutorial
