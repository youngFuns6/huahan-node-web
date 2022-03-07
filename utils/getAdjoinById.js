const sql = require('../model/db')

module.exports = {
  // 根据ID 查询前一条数据
  getFrontId(id, table) {
    return new Promise((resolve, reject) => {
      sql.query(`SELECT MAX(id) FROM ${table} WHERE id < ${id}`, (err, data) => {
        if (err) {
          console.log('查询相邻数据错误', err)
          reject(err)
        }
        let m = 'MAX(id)'
        resolve(data[0][m])
      })
    })
  },
  // 根据ID 查询后一条数据
  getBehindId(id, table) {
    return new Promise((resolve, reject) => {
      sql.query(`SELECT MAX(id) FROM ${table} WHERE id > ${id}`, (err, data) => {
        if (err) {
          console.log('查询相邻数据错误', err)
          reject(err)
        }
        let m = 'MAX(id)'
        resolve(data[0][m])
      })
    })
  }
}