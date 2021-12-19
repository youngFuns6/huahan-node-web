const sql = require('../model/db')

class Tutorial {

}

Object.assign(Tutorial.prototype, {
  getUser(tutorial, result) {
    sql.query(`SELECT * FROM huahan_web_user WHERE username='${tutorial.username}'`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("huahan_web_user: ", res[0])
      // if(!res.length){
      //   result(null, {
      //     message: ''
      //   })
      // }
      result(null, res[0])
    })
  },
  setToken(token, tutorial, result) {
    sql.query(`UPDATE huahan_web_user SET token='${token}' WHERE username='${tutorial.username}'`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("token: ", token)
      result(null, token)
    })
  },
  getToken(token, result) {
    sql.query(`SELECT * FROM huahan_web_user WHERE token='${token}'`, (err, res) => {
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      }
      console.log("huahan_web_user_token: ", res[0])
      result(null, res[0])
    })
  },
  setPassword(tutorial, result) {
    let username = tutorial.username
    let password = tutorial.password
    let newPassword = tutorial.newPassword
    sql.query(`SELECT * FROM huahan_web_user WHERE username='${username}'`, (err, res) => {
      
      if (err) {
        console.log("error: ", err)
        result(err, null)
        return
      } else {
        if (res[0] === undefined) {
          return result(null, res[0])
        } else {
          console.log('jjjjj', res[0])
          console.log(password)
          if (res[0].password === password && res[0].password !== newPassword) {
            sql.query(`UPDATE huahan_web_user SET password='${newPassword}' WHERE username='${username}'`, (err, res) => {
              if (err) {
                console.log("err:", err)
                result(err, null)
                return
              }
              result(null, {
                username,
                password,
                newPassword
              })
            })
          } else {
            result(null, res[0])
          }


        }

      }



    })
  }
})

module.exports = Tutorial