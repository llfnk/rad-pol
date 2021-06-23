<template>
  <main>
    <intro :image="'pages/realizations/intro.png'" :title="'Realizacje RADPOL'"></intro>
    <meet></meet>
    <realizations />
  </main>

</template>

<script>
import Intro from '~/components/util/Intro'
import Meet from '../../components/realizations/Meet'
import Realizations from '../../components/realizations/Realizations'
export default {
  name: 'index',
  components: { Realizations, Meet,  Intro }
}
</script>

<style scoped>

</style>
