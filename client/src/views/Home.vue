<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png" />
    <PostComponent />
  </div>
</template>

<script>
// @ is an alias to /src
import PostComponent from "@/components/PostComponent.vue";

export default {
  name: "Home",
  components: {
    PostComponent
  }
};
</script>
