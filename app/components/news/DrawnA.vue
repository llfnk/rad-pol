<template>
  <svg xmlns="http://www.w3.org/2000/svg" width="472.542" height="421" viewBox="0 0 472.542 421">
    <defs>
      <style>.a{fill:none;stroke:#ff2d32;}</style>
    </defs>
    <path
      id="pPath"
      class="drawn-path"
      stroke-width="1"
      stroke="#ff2d32"
      d="M326.4-90h-195L94.2,0H-5.4L181.8-420h96L465.6,0h-102Zm-30.6-73.8L229.2-324.6,162.6-163.8Z"
          transform="translate(6.17 420.5)"/>
  </svg>


</template>

<script>
import ViewportMixin from '../util/mixins/ViewportMixin'
export default {
  name: 'DrawnA',
  mixins: [ViewportMixin],
  created() {
    window.addEventListener('scroll', this.handleScroll)
  },
  mounted() {},
  destroyed() {
    window.removeEventListener('scroll', this.handleScroll)
  },
  methods: {
    handleScroll() {
      const self = this

      const procentOfTopSection = 50
      if (window.innerWidth < 767) {
        const procentOfTopSection = 60
      }
      if (
        this.isAnyPartOfElementInViewport(document.getElementById('Meet'))
      ) {
        if (
          this.getProcentOfSectionToTopWithSectionHeight(
            document.getElementById('Meet')
          ) > procentOfTopSection
        ) {
          document.getElementById('pPath').classList.add('path')
        }
      }
    }
  }
}
</script>

<style scoped lang='scss'>
#drawnP{
  position:absolute;
  left:-150px;
  top:0px;
}
.drawn-path {
  fill: #fff;
  opacity: 0;
}
.path {
  stroke-dasharray: 1835;
  stroke-dashoffset: 0;
  animation: dash 1.5s linear alternate 1;
  opacity: 1;
}

@keyframes dash {
  from {
    stroke-dashoffset: 1435;
  }
  to {
    stroke-dashoffset: 0;
  }
}

</style>
