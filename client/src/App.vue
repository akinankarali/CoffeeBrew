<template>
  <div id="nav">
    <router-link to="/"></router-link>
    <router-link to="/about"></router-link>

    <router-view />
  </div>
</template>

<style lang="scss">
@font-face {
  font-family: "Inter";
  src: url("./assets/fonts/Inter-Regular-slnt=0.ttf"); /* IE9 Compat Modes */
  src: url("./assets/fonts/Inter-Regular-slnt=0.ttf")
      format("embedded-opentype"),
    /* IE6-IE8 */ url("./assets/fonts/Inter-Regular-slnt=0.ttf") format("woff2"),
    /* Super Modern Browsers */ url("./assets/fonts/Inter-Regular-slnt=0.ttf")
      format("woff"),
    /* Pretty Modern Browsers */ url("./assets/fonts/Inter-Regular-slnt=0.ttf")
      format("truetype"),
    /* Safari, Android, iOS */ url("./assets/fonts/Inter-Regular-slnt=0.ttf")
      format("svg"); /* Legacy iOS */
}
* {
  margin: 0;
  padding: 0;
  border: 0;
  font-family: inherit;

  *,
  *:before,
  *:after,
  *:focus {
    box-sizing: inherit;
    outline: none;
  }
}

html {
  font-size: 14px;
  box-sizing: border-box;
}

body {
  font-size: 1rem;
  font-weight: normal;
  font-family: Inter, sans-serif;
  color: white;
}

a {
  color: inherit;
  text-decoration: none;
}

button {
  background-color: transparent;
  cursor: pointer;
}

img {
  max-width: 100%;
  vertical-align: middle;
}

h1,
h2,
h3,
h4,
h5,
h6,
b,
strong,
label {
  font-weight: 600;
}
</style>
