/*
 * @Author: YPeng11 161717186+YPeng11@users.noreply.github.com
 * @Date: 2025-09-29 21:27:38
 * @LastEditors: YPeng11 161717186+YPeng11@users.noreply.github.com
 * @LastEditTime: 2025-09-29 21:32:21
 * @FilePath: \Web-DevII-A2\RESTful-API\api-controller.js
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
var dbcon = require("../event_db");
var connection = dbcon.getconnection();
connection.connect();

var express = require('express');
var router = express.Router();

router.get("/", (req, res)=>{
	connection.query("select * from concert", (err, records,fields)=> {
		 if (err){
			 console.error("Error while retrieve the data");
		 }else{
			 res.send(records);
		 }
	})
})

module.exports = router;
