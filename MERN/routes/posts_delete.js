const express = require("express");
const Posts = require("../models/post");
const router = express.Router();

//delete post
router.delete("/post/delete/:id", (req, res) => {
    Posts.findByIdAndRemove(req.params.id).exec((err, deletedPost) => {
      if (err)
        return res.status(400).json({
          message: "Delete Unsuccess",
          err,
        });
      return res.json({
        message: "Delete Success",
        deletedPost,
      });
    });
  });
  
  module.exports = router