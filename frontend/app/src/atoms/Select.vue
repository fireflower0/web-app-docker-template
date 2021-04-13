<template>
  <select class='select' :value='selectedValue' @change='setValue'>
    <option
      v-for='option in options'
      v-bind:key='option.id'
      :value='option.value'
    >
      {{ option.value }}
    </option>
  </select>
</template>

<script>
export default {
  name: 'Select',
  props: {
    options: { type: Array, required: true },
    selectedValue: String
  },
  methods: {
    setValue (e) { this.$emit('input', e.target.value) }
  }
}
</script>

<style scoped>
.select {
  margin: 5px;
  width: 100px;
  height: 30px;
  border: 1px solid #263238;
  border-radius: 5px;
  background-color: #ECEFF1;
}
</style>
