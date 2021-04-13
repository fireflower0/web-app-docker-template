<template>
  <h1 class='headline h1' v-if='h1'>{{ text }}</h1>
  <h2 class='headline h2' v-else-if='h2'>{{ text }}</h2>
  <h3 class='headline h3' v-else-if='h3'>{{ text }}</h3>
  <h4 class='headline h4' v-else-if='h4'>{{ text }}</h4>
  <h5 class='headline h5' v-else-if='h5'>{{ text }}</h5>
  <h6 class='headline h6' v-else-if='h6'>{{ text }}</h6>
</template>

<script>
export default {
  name: 'HeadLine',
  props: {
    h1: Boolean,
    h2: Boolean,
    h3: Boolean,
    h4: Boolean,
    h5: Boolean,
    h6: Boolean,
    text: String
  }
}
</script>

<style scoped>
.headline {
  color: #212121;
  border-bottom: solid #424242;
}
.h1 {
  border-bottom-width: 6px;
}
.h2 {
  border-bottom-width: 5px;
}
.h3 {
  border-bottom-width: 4px;
}
.h4 {
  border-bottom-width: 3px;
}
.h5 {
  border-bottom-width: 2px;
}
.h6 {
  border-bottom-width: 1px;
}
</style>
