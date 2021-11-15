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
    sql.query('INSERT INTO web SET ?', newTutorial, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("create web: ", { id: res.insertId, ...newTutorial })
      result(null, { id: res.insertId, code: 200, ...newTutorial })
    })
  },
  // 获取
  getAll(tutorial, result) {
    if(tutorial.id !== 'undefined') return this.findById(tutorial.id, result)
    let m = (tutorial.page - 1) * tutorial.pageSize || 0
    let n = tutorial.pageSize || 10
    sql.query(`SELECT * FROM web limit ${m},${n}`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      // console.log('tutorial', res)
      result(null, res)
    })
  },
  // 根据id获取
  findById(id, result){
    sql.query(`SELECT * FROM web WHERE id = ${id}`, (err, res) => {
      console.log(res)
      if(err){
        console.log("error: ", err)
        result(err, null)
        return
      }
      if(res.length){
        console.log("found tutorial: ", res[0])
        result(null, res[0])
        return
      }
      result({ kind: "not_found" }, null)
    })
  }
})

module.exports = Tutorial
