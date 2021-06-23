<template>
  <svg xmlns="http://www.w3.org/2000/svg" width="247" height="297.84" viewBox="0 0 247 297.84">
    <path id='pPath2000000' stroke-width='1'
          stroke='#ff2d32' class='drawn-path'
          d="M138.99,4.92q-35.67,0-63.55-17.63T31.775-63.755Q15.99-97.17,15.99-143.5t15.785-79.745Q47.56-256.66,75.44-274.29t63.55-17.63q35.67,0,63.55,17.63t43.665,51.045Q261.99-189.83,261.99-143.5T246.205-63.755Q230.42-30.34,202.54-12.71T138.99,4.92Zm0-56.17q26.24,0,41.205-22.55t14.965-69.7q0-47.15-14.965-69.7T138.99-235.75q-25.83,0-40.795,22.55T83.23-143.5q0,47.15,14.965,69.7T138.99-51.25Z"
          transform="translate(-15.49 292.42)"/>
  </svg>
</template>

<script>
import ViewportMixin from '~/components/util/mixins/ViewportMixin'

export default {
  name: 'Drawn2000000',
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
          document.getElementById('pPath2000000').classList.add('path')
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
