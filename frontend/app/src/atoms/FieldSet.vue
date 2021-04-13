<template>
  <fieldset class='fieldset'>
    <legend class='legend'>{{ labelText }}</legend>
    <slot />
  </fieldset>
</template>

<script>
export default {
  name: 'FieldSet',
  props: {
    labelText: String,
  }
}
</script>

<style scoped>
.fieldset {
  margin: 10px;
  border: 1px solid #263238;
  border-radius: 5px;
}
.legend {
  padding: 0 10px;
  width: 100px;
  border: 1px solid #263238;
  border-style: none double none;
  border-radius: 5px;
  font-size: 14px;
  font-weight: bold;
}
</style>
