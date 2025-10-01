/*
 * @Author: YPeng11 161717186+YPeng11@users.noreply.github.com
 * @Date: 2025-09-29 21:27:38
 * @LastEditors: YPeng11 161717186+YPeng11@users.noreply.github.com
 * @LastEditTime: 2025-09-30 10:39:59
 * @FilePath: \Web-DevII-A2\RESTful-API\api-controller.js
 */
var dbcon = require("../event_db");
var connection = dbcon.getConnection();

connection.connect();

var express = require('express');
var router = express.Router();

router.get("/", (req, res) => {
	connection.query(`
		SELECT events.*, 
            organization.name as organization_name,
            organization.email as organization_email
        FROM events 
        LEFT JOIN organization ON events.organizer_id = organization.id
		`, (err, records, fields) => {
			if (err) {
				console.error("Error while retrieve the data");
			} else {
				res.json(records);
			}
		})
})


module.exports = router;
