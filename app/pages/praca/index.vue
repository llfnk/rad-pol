<template>
  <main>
    <intro :image="'pages/work/intro.png'" :title="'Praca'"></intro>
    <meet></meet>
  </main>

</template>

<script>
import Intro from '~/components/util/Intro'
import Meet from '../../components/work/Meet'
export default {
  name: 'index',
  components: { Meet, Intro }
}
</script>

<style scoped>

</style>
