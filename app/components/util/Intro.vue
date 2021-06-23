<template>
  <section id='Intro'>
    <div class='background-intro'>
     <div class='intro-photo' :style='getImageBackground'></div>
      <div class='intro-gradient'></div>
      <div class='container'>
        <div class='grid'>
          <div
            class='grid-col-12'
          >
            <img :src=getImage>
            <h1 class='h1 white intro-text my-0'>{{ title }}</h1>
          </div>
        </div>
      </div>

    </div>
  </section>

</template>

<script>
export default {
  name: 'intro',
  props: {
    title: {
      type: String,
      required: false
    },
    image: {
      type: String,
      required: false
    }
  },
  computed: {
    getImage() {
      return '/img/'  + this.image;
    },
    getImageBackground() {
      return 'background-image:' + 'url(/img/'  + this.image + ')';
    },
  },
}


</script>

<style scoped lang='scss'>
@import '~assets/style/components/util/intro';


</style>
