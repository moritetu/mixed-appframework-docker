const express = require('express');
const path = require("path");

const app = express();

app.set('views', path.join(__dirname, 'views'));
app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "../public")));

app.all('*', function(req, res) {
    res.render("h", {
        title: 'Node.js',
        content: JSON.stringify(req.headers, null, 4)
    });
});

app.listen(3000, () => console.log('app listening on port 3000!'));
