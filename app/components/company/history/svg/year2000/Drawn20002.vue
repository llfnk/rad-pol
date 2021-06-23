<template>
  <svg xmlns="http://www.w3.org/2000/svg" width="231.209" height="292.92" viewBox="0 0 231.209 292.92">
    <path id='pPath20002' stroke-width='1'
          stroke='#ff2d32'
          class='drawn-path'
          d="M230.42,342.88V397H13.53V353.95L124.23,249.4q17.63-16.81,23.78-28.9a52.579,52.579,0,0,0,6.15-23.985q0-17.22-11.685-26.445T108.24,160.84q-18.86,0-34.03,7.175A65.167,65.167,0,0,0,48.79,189.54L.41,158.38q16.81-25.01,46.33-39.155t67.65-14.145q31.98,0,55.965,10.455t37.31,29.52q13.325,19.065,13.325,44.9a100.076,100.076,0,0,1-9.84,43.87q-9.84,20.5-38.13,46.74l-66.01,62.32Z"
          transform="translate(0.289 -104.58)"/>
  </svg>
</template>

<script>
import ViewportMixin from '~/components/util/mixins/ViewportMixin'

export default {
  name: 'Drawn20002',
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
        this.isAnyPartOfElementInViewport(document.getElementById('year2000'))
      ) {
        if (
          this.getProcentOfSectionToTop(
            document.getElementById('year2000')
          ) > procentOfTopSection
        ) {
          document.getElementById('pPath20002').classList.add('path')
        }
      }
    }
  }
}
</script>

<style scoped lang='scss'>
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
