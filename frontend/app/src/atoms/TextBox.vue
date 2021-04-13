<template>
  <input
    class='textbox'
    @input='setValue'
  />
</template>

<script>
export default {
  name: 'TextBox',
  methods: {
    setValue (e) { this.$emit('input', e.target.value) }
  }
}
</script>

<style scoped>
.textbox {
  margin: 5px;
  padding: 5px;
  border-radius: 3px;
  border: 1px solid #212121;
  font-size: 14px;
}
</style>
