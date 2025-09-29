/*
 * @Author: YPeng11 161717186+YPeng11@users.noreply.github.com
 * @Date: 2025-09-29 21:35:05
 * @LastEditors: YPeng11 161717186+YPeng11@users.noreply.github.com
 * @LastEditTime: 2025-09-29 21:37:20
 * @FilePath: \Web-DevII-A2\RESTful-API\server.js
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
var express = require('express');
var app = express();
var concertAPI = require("./RESTful-API/api-controller");

app.use("/api/concerts", concertAPI);
app.listen(3060);

console.log("Server up and running on port 3060");

