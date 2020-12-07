<template>
  <div class="container">
    <h1>Lastest Posts</h1>
    <div class="create-post">
      <label for="create-post"> Say Something...</label>
      <input
        type="text"
        id="create-post"
        v-model="text"
        placeholder="create a post"
      />
      <button @click="createPost">Post!</button>
    </div>
    <hr />
    <p class="error" v-if="error">{{ error }}</p>
    <div class="posts-container">
      <div
        class="post"
        v-for="(post, index) in posts"
        :item="post"
        :index="index"
        :key="post._id"
      >
        {{
          `${post.createdAt.getDate()}/${post.createdAt.getMonth()}/${post.createdAt.getFullYear()}`
        }}
        <p class="text">
          {{ post.text }}
        </p>
      </div>
    </div>
  </div>
</template>

<script>
import PostService from "@/api/PostService";

export default {
  name: "PostComponent",
  data() {
    return {
      posts: [],
      error: "",
      text: ""
    };
  },
  async created() {
    try {
      this.posts = await PostService.getPosts();
    } catch (err) {
      this.error = err.message;
    }
  },
  methods: {
    async createPost() {
      await PostService.insertPosts(this.text);
      this.posts = await PostService.getPosts();
    }
    /*
   *  
   * async deletePost(id) {
      await PostService.deletePosts(id);
      this.posts = await PostService.getPosts();
     }
   * */
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
div {
  .container {
    max-width: 800px;
    margin: 0 auto;
  }
  .post {
    position: relative;
    border: 1px solid #5bd658;
    background-color: #3bcffb;
    padding: 10px 10px 30px 10px;
    margin-bottom: 15px;
  }
  .created-at {
    position: absolute;
    top: 0;
    left: 0;
    padding: 5px 15px 5px 15px;
    background-color: darkgreen;
  }
}
p {
  .error {
    border: 1px solid #ff5b5f;
    background-color: #ffc5c1;
    padding: 10px;
    margin-bottom: 15px;
  }
  .text {
    font-size: 22px;
    font-weight: 700;
    margin-bottom: 0;
  }
}
</style>
