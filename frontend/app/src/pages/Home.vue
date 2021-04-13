<template>
  <div id='home'>
    <HeadLine h1 text='Home' />
    <HeadLine h2 text='Home' />
    <HeadLine h3 text='Home' />
    <HeadLine h4 text='Home' />
    <HeadLine h5 text='Home' />
    <HeadLine h6 text='Home' />

   <FieldSet labelText='TextBox'>
      <TextBox v-model='message1' placeholder='Edit Me' />
      <p>Message is: {{ message1 }}</p>
    </FieldSet>

    <FieldSet labelText='TextArea'>
      <TextArea v-model='message2' placeholder='Edit Me' />
      <p>Message is: {{ message2 }}</p>
    </FieldSet>

    <FieldSet labelText='Radio'>
      <Radio
        v-model='selectedValue'
        :options='options1'
        :selectedValue='selectedValue'
      />
      <p>Selected item is: {{ selectedValue }}</p>
    </FieldSet>

    <FieldSet labelText='CheckBox'>
      <CheckBox
        v-model='selectedValues'
        :options='options2'
        :selectedValues='selectedValues'
      />
      <p>Selected items is: {{ selectedValues.join(', ') }} </p>
    </FieldSet>

    <FieldSet labelText='Select'>
      <Select
        v-model='selectedItem'
        :options='options3'
        :selectedValue='selectedItem'
      />
      <p>Selected item is: {{ selectedItem }}</p>
    </FieldSet>
  </div>
</template>

<script>
import HeadLine from '../atoms/HeadLine.vue'
import FieldSet from '../atoms/FieldSet.vue'
import TextBox from '../atoms/TextBox.vue'
import TextArea from '../atoms/TextArea.vue'
import Radio from '../atoms/Radio.vue'
import CheckBox from '../atoms/CheckBox.vue'
import Select from '../atoms/Select.vue';

export default {
  components: {
    HeadLine,
    TextBox,
    TextArea,
    FieldSet,
    Radio,
    CheckBox,
    Select
  },
  data() {
    return {
      message1: 'Hello, Text Box !',
      message2: 'Hello, Text Area !',
      selectedValue: 'Orange',
      selectedValues: ['Blue'],
      options1: [
        { id: 'radio-0', groupName: 'fruits', value: 'Apple' },
        { id: 'radio-1', groupName: 'fruits', value: 'Orange' },
        { id: 'radio-2', groupName: 'fruits', value: 'Grape' },
      ],
      options2: [
        { id: 'checkbox-0', groupName: 'colors', value: 'Red' },
        { id: 'checkbox-1', groupName: 'colors', value: 'Green' },
        { id: 'checkbox-2', groupName: 'colors', value: 'Blue' },
      ],
      options3: [
        { id: 'typeA', value: 'A' },
        { id: 'typeB', value: 'B' },
        { id: 'typeO', value: 'O' },
        { id: 'typeAB', value: 'AB' },
      ],
      selectedItem: 'O',
    }
  }
}
</script>

<style>
#home {
  margin: 5px;
  padding: 10px;
  background-color: #FFF3E0;
}
</style>
