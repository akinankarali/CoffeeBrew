<template>
  <div class="left-side-bar">
    <Container>
      <div class="left-side-bar-top">
        <div class="logo">
          <img src="../assets/logo.png" alt="" />
        </div>
        <div class="avatar">
          <img src="../assets/images/pp.jpg" alt="" />
        </div>
        <div class="name-surname">
          <h3>Akin Ankarali</h3>
        </div>
      </div>
      <div class="left-side-bar-bottom">
        <div class="your-tools">
          <div class="your-tools-title">
            <img
              src="../assets/icons/coffee-maker.png"
              alt="brewing-tools"
              title="brewing-tools"
              class="icon"
            />
            <h3>Your Tools</h3>
          </div>
          <div class="your-tools-options">
            <button class="button">French Press</button>
            <button class="">Aeropress</button>
            <button class="">Delterpress</button>
            <button class="">V60</button>
            <button class="">Chemex</button>
            <button class="">Syphon</button>
          </div>
        </div>
        <div class="your-recipe">
          <div class="your-recipe-title">
            <img
              src="../assets/icons/coffee-beans.png"
              alt="brewing-tools"
              title="brewing-tools"
              class="icon"
            />
            <h3>Your Recipes</h3>
          </div>
          <div class="your-recipe-subtitle">
            <p>coffee(gr) - water(ml) - minute</p>
          </div>
          <div class="your-recipe-options">
            <button class="">15-200-4</button>
            <button class="">15-200-7</button>
            <button class="">17-204-5</button>
            <button class="">20-360-7</button>
            <button class="">40-800-6</button>
            <button class="">17-204-5</button>
          </div>
        </div>
        <div class="your-stats">
          <div class="your-stats-title">
            <img
              src="../assets/icons/coffee-pot.png"
              alt="brewing-tools"
              title="brewing-tools"
              class="icon"
            />
            <h3>Your Statistics</h3>
          </div>
          <div class="stats">
            <p>08/12/2020 & 15-200-4</p>
            <p>08/12/2020 & 15-200-4</p>
            <p>08/12/2020 & 15-200-4</p>
            <p>08/12/2020 & 15-200-4</p>
            <p>08/12/2020 & 15-200-4</p>
            <p>08/12/2020 & 15-200-4</p>
            <p>08/12/2020 & 15-200-4</p>
          </div>
        </div>
      </div>
    </Container>
  </div>
</template>
<script>
import Container from "@/components/Container";
export default {
  name: "LeftSideBar",
  components: {
    Container
  }
};
</script>
<style lang="scss" scoped>
.left-side-bar {
  .container {
    margin-left: -24px;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding-top: 16px;
    padding-left: 24px;
    background-color: #282a34;
    height: auto;
    .left-side-bar-top {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      .logo {
        margin-left: -8px;
        margin-bottom: 36px;
        height: 120px;
        width: 120px;
      }
      .avatar {
        display: flex;
        align-items: center;
        img {
          vertical-align: middle;
          width: 90px;
          height: 90px;
          border-radius: 50%;
          border: 2px solid #b36500;
        }
        margin-bottom: 16px;
      }
      .name-surname {
        margin-bottom: 36px;
        h3 {
          font-size: 14px;
        }
      }
    }
    .left-side-bar-bottom {
      i {
        margin-right: 8px;
      }
      p {
        margin-bottom: 8px;
        font-weight: 500;
      }
      .icon {
        filter: invert(1);
      }
      h3 {
        margin-left: 8px;
      }
      button{
        width: 100px;
        height: 30px;
        color: white;
        margin-bottom: 16px;
        border: 1px solid #ffff;
      }
      .your-tools {
        margin-bottom: 24px;
        display: flex;
        flex-direction: column;
        .your-tools-title {
          display: flex;
          margin-bottom: 24px;
          justify-content: center;
          align-items: center;
        }
        .your-tools-options {
          display: flex;
          flex-direction: column;
          align-items: start;
          margin-left: 36px;
          .button {
            border: 1px solid #fcac46;
          }
        }
      }
      .your-recipe {
        margin-bottom: 24px;
        display: flex;
        flex-direction: column;
        .your-recipe-title {
          display: flex;
          justify-content: center;
          align-items: center;
          margin-bottom: 8px;
        }
        .your-recipe-subtitle {
          display: flex;
          align-items: center;
          justify-content: center;
          p {
            font-size: 10px;
            font-weight: 200;
            margin-bottom: 24px;
          }
        }
        .your-recipe-options {
          display: flex;
          flex-direction: column;
          align-items: start;
          margin-left: 36px;
        }
      }
      .your-stats {
        margin-bottom: 24px;
        display: flex;
        flex-direction: column;
        .your-stats-title {
          display: flex;
          margin-bottom: 8px;
          justify-content: center;
          align-items: center;
        }
        .stats {
          align-items: start;
          margin-left: 36px;
        }
      }
    }
  }
}
</style>
