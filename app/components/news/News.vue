<template>
  <section id='Newses'>
    <div class='container'>
      <div class='grid'>
        <div class='grid-col-2'></div>
        <div class='grid-col-9 newses-tile-wrapper'>
          <div class='grid'>
            <div
              class='grid-col-4 news-tile'

            >
              <div class='news-tile-background'>
                <img src='~static/img/pages/main/zdjecie_teaser_firma1.png'>
                <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Czytaj</p>
              </div>
              <p class='news-tile-title my-0'>Modernizacja Obwodnicy Wschodniej zakończona</p>
              <p class='news-tile-date my-0'>20.04.2021</p>

            </div>
            <div
              class='grid-col-4 news-tile'

            >
              <div class='news-tile-background'>
                <img src='~static/img/pages/main/zdjecie_teaser_firma1.png'>
                <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Czytaj</p>
              </div>
              <p class='news-tile-title my-0'>Modernizacja Obwodnicy Wschodniej zakończona</p>
              <p class='news-tile-date my-0'>20.04.2021</p>

            </div>
            <div
              class='grid-col-4 news-tile'

            >
              <div class='news-tile-background'>
                <img src='~static/img/pages/main/zdjecie_teaser_firma1.png'>
                <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Czytaj</p>
              </div>
              <p class='news-tile-title my-0'>Modernizacja Obwodnicy Wschodniej zakończona</p>
              <p class='news-tile-date my-0'>20.04.2021</p>

            </div>
            <div
              class='grid-col-4 news-tile'

            >
              <div class='news-tile-background'>
                <img src='~static/img/pages/main/zdjecie_teaser_firma1.png'>
                <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Czytaj</p>
              </div>
              <p class='news-tile-title my-0'>Modernizacja Obwodnicy Wschodniej zakończona</p>
              <p class='news-tile-date my-0'>20.04.2021</p>

            </div>
            <div
              class='grid-col-4 news-tile'

            >
              <div class='news-tile-background'>
                <img src='~static/img/pages/main/zdjecie_teaser_firma1.png'>
                <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Czytaj</p>
              </div>
              <p class='news-tile-title my-0'>Modernizacja Obwodnicy Wschodniej zakończona</p>
              <p class='news-tile-date my-0'>20.04.2021</p>

            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'News'
}
</script>

<style scoped lang='scss'>
.newses-tile-wrapper {
  padding-bottom: 5rem;
  padding-top: 3rem;

  .news-tile {
    position: relative;
    background-color: $white;
    margin-bottom: 20px;


    .news-tile-background {
      position: relative;
      display: flex;

      img {
        max-width: 100%;
      }

      .paragraph-3-tile {
        position: absolute;
        bottom: 0px;
        left: 50%;
        margin-right: -50%;
        transform: translate(-50%, -50%);
        transition: all 0.3s ease-out;
        opacity: 0;
      }

      &:before {
        content: '';
        position: absolute;
        left: 0px;
        bottom: 0px;
        width: 100%;
        height: 100%;
        background: transparent linear-gradient(180deg, #0000001A 0%, #000000CC 100%) 0% 0% no-repeat padding-box;
        opacity: 0;
        transition: all 0.3s ease-out;
      }
    }


    .news-tile-title {
      font-size: 1rem;
      font-weight: $medium;
      color: $black;
      margin-top: 20px;
      margin-bottom: 5px;
      line-height: 1.2;
    }

    .news-tile-date {
      font-size: 0.875rem;
      font-weight: $medium;
      margin-top: 5px;
      color: $g88;
    }


    &:hover {
      cursor: pointer;

      .news-tile-background {
        &:before {
          content: '';
          position: absolute;
          left: 0px;
          bottom: 0px;
          width: 100%;
          height: 100%;
          background: transparent linear-gradient(180deg, #0000001A 0%, #000000CC 100%) 0% 0% no-repeat padding-box;
          opacity: 1;
        }

        .paragraph-3-tile {
          opacity: 1;
          bottom: 30px;
        }
      }


    }

  }
}
</style>
