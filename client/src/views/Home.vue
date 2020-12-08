<template>
  <div class="home">
    <LeftSideBar />
    <div class="middle-list">
      <Container>
        <div class="search-bar">
          <input type="search" placeholder="  Search..." />
        </div>
        <Navbar />
        <div class="cards"></div>
      </Container>
    </div>
    <div class="add-and-timer">
      <p>add and timer</p>
    </div>
  </div>
</template>

<script>
import Container from "@/components/Container";
import LeftSideBar from "@/components/LeftSideBar";
import Navbar from "@/components/Navbar";
export default {
  name: "Home",
  components: {
    Container,
    LeftSideBar,
    Navbar
  }
};
</script>
<style lang="scss" scoped>
$base-color: #c6538c;
$border-dark: rgba($base-color, 0.88);
.home {
  display: grid;
  grid-template-columns: 280px 1fr 0.7fr;
  .middle-list {
    background-color: #3c3f51;
    height: auto;
    .search-bar {
      display: flex;
      padding-top: 48px;
      margin-left: 64px;
      input {
        width: 250px;
        height: 40px;
        border-radius: 8px;
      }
    }
  }
  .add-and-timer {
    background-color: #3c3f51;
    height: auto;
  }
}
</style>
