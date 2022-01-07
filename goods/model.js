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
    let m = (tutorial.page - 1) * tutorial.pageSize || 0
    let n = tutorial.pageSize || 10
    let sqlText = tutorial.type === null || tutorial.type === undefined ? `SELECT * FROM huahan_web_goods ORDER BY id DESC limit ${m},${n}; SELECT FOUND_ROWS() FROM huahan_web_goods` : `SELECT * FROM huahan_web_goods WHERE type=${tutorial.type} ORDER BY id DESC limit ${m},${n}; SELECT FOUND_ROWS() FROM huahan_web_goods WHERE type=${tutorial.type}`
    sql.query(sqlText, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log('huahan_web_goods', res)
      // sql.query(`SELECT FOUND_ROWS() FROM web_condition WHERE type=${tutorial.type}`, (errRows, rows) => {
      //   // console.log(rows.length)
        result(null, {res: res[0], total: res[1].length})
      // })
      // result(null, {list: res, total})
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
        console.log("found huahan_web_goods: ", res[0])
        result(null, {res: res[0]})
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
      console.log("delete huahan_web_goods: ", {id})
      result(null, {id})
    })
  },
  // 置顶
  topCondition(tutorial, result) {
    sql.query(`select * from table order by id in(${tutorial.id}) desc`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log('999999', res)
      console.log("topId:", tutorial)
      result(null, tutorial)
    })
  }
})

module.exports = Tutorial
