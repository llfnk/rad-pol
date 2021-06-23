const ViewportMixin = {
  methods: {
    getProcentOfSectionToTop(el,elementWidth = 0) {
      // obliczenia dla procentu w jakim jest juz
      const windowHeight =
        window.innerHeight || document.documentElement.clientHeight
      const rect =
        el.getBoundingClientRect().top + elementWidth > 0 ? el.getBoundingClientRect().top + elementWidth : 0

      // procent w jakim dojechał do topu
      return 100 - (rect / windowHeight) * 100
    },
    getProcentOfSectionToTopWithSectionHeight(el,elementWidth = 0) {
      // obliczenia dla procentu w jakim jest juz
      const windowHeight =
        window.innerHeight || document.documentElement.clientHeight
      const rect =
        el.getBoundingClientRect().top + elementWidth + el.getBoundingClientRect().height > 0 ? el.getBoundingClientRect().top + elementWidth + el.getBoundingClientRect().height  : 0
    //  console.log(rect);
      // console.log(windowHeight);
      // procent w jakim dojechał do topu

      return 100 - ((rect)/ (windowHeight + el.getBoundingClientRect().height)) * 100
    },
    // testowanie, czy dany element znajduje sie w viewport
    isAnyPartOfElementInViewport(el) {
      const rect = el.getBoundingClientRect()
      // DOMRect { x: 8, y: 8, width: 100, height: 100, top: 8, right: 108, bottom: 108, left: 8 }
      const windowHeight =
        window.innerHeight || document.documentElement.clientHeight
      const windowWidth =
        window.innerWidth || document.documentElement.clientWidth

      // http://stackoverflow.com/questions/325933/determine-whether-two-date-ranges-overlap
      const vertInView = rect.top <= windowHeight && rect.top + rect.height >= 0
      const horInView = rect.left <= windowWidth && rect.left + rect.width >= 0

      return vertInView && horInView
    }
  }
}

export default ViewportMixin
