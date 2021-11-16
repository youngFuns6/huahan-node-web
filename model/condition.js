const sql = require('./db')

class Tutorial {
  constructor(page, pageSize) {
    // this.page = page,
    // this.pageSize = pageSize
  }

}

Object.assign(Tutorial.prototype, {
  // 添加
  create(newTutorial, result) {
    sql.query('INSERT INTO web_condition SET ?', newTutorial, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("create web_condition: ", { id: res.insertId, ...newTutorial })
      result(null, { id: res.insertId, ...newTutorial })
    })
  },
  // 获取
  getAll(tutorial, result) {
    if (tutorial.id !== undefined) return this.findById(tutorial.id, result)
    let m = (tutorial.page - 1) * tutorial.pageSize || 0
    let n = tutorial.pageSize || 10
    sql.query(`SELECT * FROM web_condition limit ${m},${n}`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log('web_condition', res)
      result(null, res)
    })
  },
  // 根据id获取
  findById(id, result) {
    sql.query(`SELECT * FROM web_condition WHERE id = ${id}`, (err, res) => {
      // console.log(res)
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      if (res.length) {
        console.log("found web_condition: ", res[0])
        result(null, res[0])
        return
      }
      result({ kind: "not_found" }, null)
    })
  },
  // 修改
  updateById(newTutorial, result) {
    sql.query(`UPDATE web_condition SET ? WHERE id=${newTutorial.id}`, newTutorial, (err, res) => {
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
      console.log("updated web_condition: ", { ...newTutorial })
      result(null, { ...newTutorial })
    })
  },
  // 删除
  deleteById(id, result) {
    sql.query(`DELETE FROM web_condition WHERE id=${id}`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("delete web_condition: ", {id})
      result(null, {id})
    })
  }
})

module.exports = Tutorial
