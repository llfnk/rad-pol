<template>
  <div>
    <header-layout></header-layout>
    <Nuxt />
    <footer-layout></footer-layout>
  </div>
</template>

<style lang='scss'>
@import '@lsbdatawefeelit/panda/index';
</style>
<script>
import FooterLayout from '../components/layout/FooterLayout'
import HeaderLayout from '../components/layout/HeaderLayout'

export default {
  components: { HeaderLayout, FooterLayout }
}
</script>
