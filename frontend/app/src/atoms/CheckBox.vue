<template>
  <div>
    <div class='form-wrapper' v-for='option in options' v-bind:key='option.id'>
      <input
        type='checkbox'
        :id='option.id'
        :value='option.value'
        :checked='selectedValues.includes(option.value)'
        @change='setValues'
      />
      <label :for='option.id'>{{ option.value }}</label>
    </div>
  </div>
</template>

<script>
export default {
  name: 'CheckBox',
  props: {
    options: { type: Array, required: true },
    selectedValues: Array
  },
  methods: {
    setValues (e) {
      if (e.target.checked) {
        this.$emit('input', this.selectedValues.concat(e.target.value));
      } else {
        this.$emit(
          'input',
          this.selectedValues.filter(v => v !== e.target.value)
        );
      }
    }
  }
}
</script>

<style scoped>
.form-wrapper {
  margin: 5px;
  float: left;
}
.form-wrapper input {
  display: none;
}
.form-wrapper label {
  display: block;
  width: 100px;
  text-align: center;
  cursor: pointer;
  border: 1px solid #263238;
  border-radius: 5px;
  background-color: #ECEFF1;
}
.form-wrapper input:checked + label {
  background-color: #00E676;
}
</style>
