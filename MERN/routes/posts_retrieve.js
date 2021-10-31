const express = require("express");
const Posts = require("../models/post");
const router = express.Router();

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

module.exports = router;
