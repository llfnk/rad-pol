<template>
  <main>
    <intro :image="'pages/company/intro.png'" :title="'Firma'"></intro>
    <history></history>
  </main>

</template>

<script>
import Intro from '~/components/util/Intro'
import History from '../../components/company/History'
export default {
  name: 'index',
  components: { History, Intro }
}
</script>

<style scoped>

</style>
