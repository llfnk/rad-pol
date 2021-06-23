<template>
  <main>
    <intro :image="'pages/rent/intro.png'" :title="'Wynajem sprzętu'"></intro>
  </main>

</template>

<script>
import Intro from '~/components/util/Intro'
export default {
  name: 'index',
  components: {   Intro }
}
</script>

<style scoped>

</style>
