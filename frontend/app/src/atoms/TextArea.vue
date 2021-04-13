<template>
  <textarea
    class='textarea'
    :value='value'
    @input='setValue'
  />
</template>

<script>
export default {
  name: 'TextArea',
  props: { value: String },
  methods: {
    setValue (e) { this.$emit('input', e.target.value) }
  }
}
</script>

<style scoped>
.textarea {
  margin: 5px;
  padding: 5px;
  border-radius: 3px;
  border: 1px solid #212121;
  font-size: 14px;
}
</style>
