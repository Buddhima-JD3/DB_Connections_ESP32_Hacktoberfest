const express = require("express");
const mongoose = require("mongoose");
const bodyParser = require("body-parser");
const cors = require("cors");
const app = express();
const postRoutes = require("./routes/posts"); // import routes
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json()); //app middleware
app.use(cors()); //app middleware
app.use(postRoutes); //route middleware
const port = 8000;
const db_url =
  "mongodb+srv://thevinmern:thevinmern123@mernapp.unfbx.mongodb.net/Mernapp?retryWrites=true&w=majority";
mongoose
  .connect(db_url, {
    useUnifiedTopology: true,
    useNewUrlParser: true,
  })
  .then(() => {
    console.log("DB Connected!");
  })
  .catch((err) => console.log("DB Connection error!"));
app.listen(port, () => {
  console.log(`App is running on ${port}`);
});
