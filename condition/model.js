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
    sql.query('INSERT INTO huahan_web_condition SET ?', newTutorial, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("create huahan_web_condition: ", { id: res.insertId, ...newTutorial })
      result(null, { id: res.insertId, ...newTutorial })
    })
  },
  // 获取
  getAll(tutorial, result) {
    console.log(tutorial)
    if (tutorial.id !== undefined) return this.findById(tutorial.id, result)
    let m = (tutorial.page - 1) * tutorial.pageSize || 0
    let n = tutorial.pageSize || 10
    let sqlText = tutorial.type === undefined ? `SELECT * FROM huahan_web_condition ORDER BY id DESC limit ${m},${n}; SELECT FOUND_ROWS() FROM huahan_web_condition` : `SELECT * FROM huahan_web_condition WHERE type=${tutorial.type} ORDER BY id DESC limit ${m},${n}; SELECT FOUND_ROWS() FROM huahan_web_condition WHERE type=${tutorial.type}`
    sql.query(sqlText, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log('huahan_web_condition', res)
      // sql.query(`SELECT FOUND_ROWS() FROM web_condition WHERE type=${tutorial.type}`, (errRows, rows) => {
      //   // console.log(rows.length)
        result(null, {res: res[0], total: res[1].length})
      // })
      // result(null, {list: res, total})
    })
  },
  // 根据id获取
  findById(id, result) {
    sql.query(`SELECT * FROM huahan_web_condition WHERE id = ${id}`, (err, res) => {
      console.log(res)
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      if (res.length) {
        // 查询前一条数据
        let frontId = getFrontId(id, 'huahan_web_condition')
        // 查询后一条数据
        let behindId = getBehindId(id, 'huahan_web_condition')
        Promise.all([frontId, behindId]).then(value => {
          result(null, { res: res[0], frontId: value[0], behindId: value[1] })
        }).catch(() => {
          result(null, { res: res[0], frontId: null, behindId: null })
        })
        console.log("found huahan_web_condition: ", res[0])
        return
      }
      result({ kind: "not_found" }, null)
    })
  },
  // 修改
  updateById(newTutorial, result) {
    sql.query(`UPDATE huahan_web_condition SET ? WHERE id=${newTutorial.id}`, newTutorial, (err, res) => {
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
      console.log("updated huahan_web_condition: ", { ...newTutorial })
      result(null, { ...newTutorial })
    })
  },
  // 删除
  deleteById(id, result) {
    sql.query(`DELETE FROM huahan_web_condition WHERE id=${id}`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("delete huahan_web_condition: ", {id})
      result(null, {id})
    })
  }
})

module.exports = Tutorial
