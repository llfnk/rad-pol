<template>
  <svg xmlns='http://www.w3.org/2000/svg' width='124.82' height='288' viewBox='0 0 124.82 288' >
    <defs>
      <style>.a {
        fill: none;
        stroke: #ff2d32;
      }</style>
    </defs>
    <path id='pPath199' stroke-width='1'
          stroke='#ff2d32' class='drawn-path' d='M126.69,110V397H60.27V163.3H2.87V110Z'
          transform='translate(-2.37 -109.5)' />
  </svg>
</template>

<script>
import ViewportMixin from '~/components/util/mixins/ViewportMixin'

export default {
  name: 'Drawn1',
  mixins: [ViewportMixin],
  created() {
    window.addEventListener('scroll', this.handleScroll)
  },
  mounted() {
  },
  destroyed() {
    window.removeEventListener('scroll', this.handleScroll)
  },
  methods: {
    handleScroll() {
      const self = this

      const procentOfTopSection = 30
      if (window.innerWidth < 767) {
        const procentOfTopSection = 60
      }
      if (
        this.isAnyPartOfElementInViewport(document.getElementById('year1990'))
      ) {
        if (
          this.getProcentOfSectionToTop(
            document.getElementById('year1990')
          ) > procentOfTopSection
        ) {
          document.getElementById('pPath199').classList.add('path')
        }
      }
    }
  }
}
</script>

<style scoped lang='scss'>
.drawn-path {
  fill: $c0;
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
