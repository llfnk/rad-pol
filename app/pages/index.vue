<template>
<main>
  <intro></intro>
  <meet></meet>
  <offer></offer>

</main>
</template>

<script>
import Intro from '../components/main/Intro'
import Meet from '../components/main/Meet'
import Offer from '../components/main/Offer'
export default {
  components: { Offer, Meet, Intro },
  // created() {
  //   this.$router.options.routes.forEach((route) => {
  //     console.log(route.name)
  //   })
  // },
}
</script>

<style lang='scss' scoped>
main{

  background-color:$white;
}
</style>
