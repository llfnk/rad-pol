<template>
  <svg xmlns='http://www.w3.org/2000/svg' width='365.2' height='421' viewBox='0 0 365.2 421' id="drawnP">
    <defs>
      <style>.a {
        fill: #fff;
        stroke: #ff2d32;
      }</style>
    </defs>
    <path
          id="pPath"
          class="drawn-path"
          stroke-width="1"
          stroke="#ff2d32"
          d='M231.6-420q55.8,0,96.9,18.6t63.3,52.8q22.2,34.2,22.2,81,0,46.2-22.2,80.7t-63.3,52.8q-41.1,18.3-96.9,18.3H147V0H49.8V-420Zm-5.4,225q43.8,0,66.6-18.9t22.8-53.7q0-35.4-22.8-54.3t-66.6-18.9H147V-195Z'
          transform='translate(-49.3 420.5)' />
  </svg>
</template>

<script>
import ViewportMixin from '../util/mixins/ViewportMixin'
export default {
  name: 'DrawnP',
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
  stroke-dasharray: 1435;
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
