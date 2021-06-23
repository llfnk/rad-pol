<template>

  <svg xmlns="http://www.w3.org/2000/svg" width="373.459" height="421" viewBox="0 0 373.459 421">
    <defs>
      <style>.a{fill:none;stroke:#ff2d32;}</style>
    </defs>
    <path
      id="pPath"
      class="drawn-path"
      stroke-width="1"
      stroke="#ff2d32"
          d="M317.4,0l-81-117H147V0H49.8V-420H231.6q55.8,0,96.9,18.6t63.3,52.8q22.2,34.2,22.2,81t-22.5,80.7Q369-153,327.6-135L421.8,0Zm-1.8-267.6q0-35.4-22.8-54.3t-66.6-18.9H147v146.4h79.2q43.8,0,66.6-19.2T315.6-267.6Z"
          transform="translate(-49.3 420.5)"/>
  </svg>


</template>

<script>
import ViewportMixin from '../util/mixins/ViewportMixin'
export default {
  name: 'DrawnR',
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
