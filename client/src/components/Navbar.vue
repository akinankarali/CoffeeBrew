<template>
  <div class="nav">
    <h2>French Press</h2>
    <h2>AeroPress</h2>
    <h2>DelterPress</h2>
    <h2>V60</h2>
    <h2>Chemex</h2>
    <h2>Syphon</h2>
  </div>
</template>

<script>
export default {
  name: "Navbar"
};
</script>

<style scoped lang="scss">
.nav {
  display: flex;
  color: white;
  overflow-x: scroll;
  padding: 20px 10px 10px 40px;
  &::-webkit-scrollbar {
    display: none;
  }
  -ms-overflow-style: none;
  scrollbar-width: none;
  h2 {
    cursor: pointer;
    margin-left: 30px;
    margin-right: 30px;
    font-weight: 500;
    font-size: 16px;
    opacity: 0.7;
    transition: transform 50ms ease-out;
    &:hover {
      opacity: 1;
      transform: scale(1.2);
    }
  }
}
</style>
