const express = require('express');
const morgan = require('morgan');  // <-- add this

const app = express();

require('dotenv').config();

app.set('view engine','ejs');
app.set('views','./views');

app.use(express.static(__dirname + '/public'));

// Add morgan middleware for logging requests
app.use(morgan('combined'));

app.get("/", function(req, res) {
    res.render("index");
})

const PORT = process.env.PORT;

app.listen(PORT, () => {
    console.log(`app is listening to port ${PORT}`);
});
