import React, { Component } from "react";
import axios from "axios";

export default class Home extends Component {
  constructor(props) {
    super(props);
    this.state = {
      posts: [],
      sum:[],
      
    };
  }
  componentDidMount() {
    this.retrievePosts();
  }
  retrievePosts() {
    axios.get("/posts").then((res) => {
      if (res.data.success) {
        
        this.setState({
          posts: res.data.existingPosts,
          postsCount:res.data.postCount,
          sum: res.data.sum,
          
        });
        console.log(this.state.posts);
        console.log(this.state.postsCount);
        console.log(this.state.sum);
       
        
      }
    });
  
  }

  onDelete = (id) => {
    axios.delete(`/post/delete/${id}`).then((res) => {
      alert("Deleted Succesfully");
      this.retrievePosts();
    });
  };
  filterData(posts, searchKey) {
    const result = posts.filter(
      (post) =>
        post.topic.toLowerCase().includes(searchKey) ||
        post.description.toLowerCase().includes(searchKey) ||
        post.postCategory.toLowerCase().includes(searchKey)
    );
    this.setState({ posts: result });
  }
  handleSearchArea = (e) => {
    const searchKey = e.currentTarget.value;
    axios.get("/posts").then((res) => {
      if (res.data.success) {
        this.filterData(res.data.existingPosts, searchKey);
      }
    });
  };
  
  render() {
    return (
      <div className="container">
        <div className="col-lg-3 mt-2 mb-2">
          <input
            className="form-control"
            type="search"
            placeholder="Search..."
            name="searchQuery"
            onChange={this.handleSearchArea}
          ></input>
        </div>
        <h1>All Posts</h1>
        <table className="table table-hover">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Topic</th>
              <th scope="col">Description</th>
              <th scope="col">Post Category</th>
              <th scope="col">Price</th>
              <th scope="col">Actions</th>
            </tr>
          </thead>
          <tbody>
            {this.state.posts.map((posts, index) => (
              
              <tr key={index}>
                <th scope="row">{index + 1}</th>
                <td>
                  <a
                    href={`/posts/${posts._id}`}
                    style={{ textDecoration: "none" }}
                  >
                    {posts.topic}
                  </a>
                </td>
                <td>{posts.description}</td>
                <td>{posts.postCategory}</td>
                <td>{posts.price}</td>
                <td>
                  <a className="btn btn-warning" href={`/edit/${posts._id}`}>
                    <i className="fas fa-edit"></i>&nbsp;Edit
                  </a>
                  &nbsp;
                  <a
                    className="btn btn-danger"
                    href="#"
                    onClick={() => this.onDelete(posts._id)}
                  >
                    <i className="far fa-trash-alt"></i>&nbsp;Delete
                  </a>
                </td>
              </tr>
            ))}
           
          </tbody>
        </table>
        <p>Topics Count - {this.state.postsCount} </p>
        {this.state.sum.map((sum, index) => (
          <p>Price Sum- {sum.sum}</p>
        ))}
         {this.state.sum.map((sum, index) => (
          <p>Price Average- {sum.avg}</p>
        ))}
        <button className="btn btn-success">
          <a href="/add" style={{ textDecoration: "none", color: "white" }}>
            Create New Post
          </a>
        </button>
      </div>
    );
  }
}
