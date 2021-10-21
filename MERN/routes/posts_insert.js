const express = require("express");
const Posts = require("../models/post");
const router = express.Router();

router.post("/post/save/", (req, res) => {
  let newPost = new Posts(req.body);
  newPost.save((err) => {
    if (err) {
      return res.status(400).json({
        error: err,
      });
    }
    return res.status(200).json({
      success: "Posts saved succesfully",
    });
  });

});

module.exports = router;