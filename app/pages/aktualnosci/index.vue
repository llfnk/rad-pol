<template>
  <main>
    <intro :image="'pages/news/intro.png'" :title="'Aktualności'"></intro>
    <meet />
    <news />
  </main>

</template>

<script>
import Intro from '~/components/util/Intro'
import Meet from '../../components/news/Meet'
export default {
  name: 'index',
  components: { Meet,   Intro }
}
</script>

<style scoped>

</style>
