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
//get post
router.get("/posts", (req, res) => {
  
  Posts.find().exec((err, posts) => {
    var count = posts.length;
    Posts.aggregate([
      {
        $group: {
          _id: null,
          sum: {
            $sum: "$price"
          },
          avg: {
            $avg: "$price"
          }
         
        }
        
      } 
    ]).exec((err, sum)=>{
      return res.status(200).json({
        success: true,
        existingPosts: posts,
        postCount:count,
        sum: sum,
        
    })
    
      
    });
  });
 
});

//get specific
router.get("/posts/:id", (req, res) => {
  let postid = req.params.id;
  Posts.findById(postid, (err, post) => {
    if (err) {
      return res.status(400).json({ success: false, err });
    }
    return res.status(200).json({
      success: true,
      post,
    });
  });
});
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
module.exports = router;
