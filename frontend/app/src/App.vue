<template>
  <div id='app'>
    <span>
      <router-link to='/'>
        <Button labelText='Home' />
      </router-link>
      <router-link to='/about'>
        <Button labelText='About' />
      </router-link>
    </span>
    <router-view/>
  </div>
</template>

<script>
import Button from './atoms/Button.vue'

export default {
  components: {
    Button
  }
}
</script>

<style>
#app {
  margin: 10px;
  padding: 10px;
}
</style>
