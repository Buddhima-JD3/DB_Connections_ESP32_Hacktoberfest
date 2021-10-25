const express = require("express");
const Posts = require("../models/post");
const router = express.Router();

//update posts
router.put("/post/update/:id", (req, res) => {
    Posts.findByIdAndUpdate(
      req.params.id,
      {
        $set: req.body,
      },
      (err, post) => {
        if (err) {
          return res.status(400).json({ error: err });
        }
        return res.status(200).json({
          success: "Uploaded Succesfully",
        });
      }
    );
  });

  module.exports = router;