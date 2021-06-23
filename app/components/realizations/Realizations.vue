<template>
  <section id='realizations'>
    <div class='container'>
      <div class='grid realizations-tile-wrapper'>
        <div
          class='grid-col-4 realization-tile'

        >
          <div class='realization-tile-background'>

          </div>
          <p class='realization-tile-title my-0'>Modernizacja instalacji grzewczej i wymiana nawierzchni pl.
            Dominikański Wrocław</p>
          <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Zobacz więcej</p>
        </div>
        <div
          class='grid-col-4 realization-tile'

        >
          <div class='realization-tile-background'>

          </div>
          <p class='realization-tile-title my-0'>Modernizacja instalacji grzewczej i wymiana nawierzchni pl.
            Dominikański Wrocław</p>
          <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Zobacz więcej</p>
        </div>
        <div
          class='grid-col-4 realization-tile'

        >
          <div class='realization-tile-background'>

          </div>
          <p class='realization-tile-title my-0'>Modernizacja instalacji grzewczej i wymiana nawierzchni pl.
            Dominikański Wrocław</p>
          <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Zobacz więcej</p>
        </div>
        <div
          class='grid-col-4 realization-tile'

        >
          <div class='realization-tile-background'>

          </div>
          <p class='realization-tile-title my-0'>Modernizacja instalacji grzewczej i wymiana nawierzchni pl.
            Dominikański Wrocław</p>
          <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Zobacz więcej</p>
        </div>
        <div
          class='grid-col-4 realization-tile'

        >
          <div class='realization-tile-background'>

          </div>
          <p class='realization-tile-title my-0'>Modernizacja instalacji grzewczej i wymiana nawierzchni pl.
            Dominikański Wrocław</p>
          <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Zobacz więcej</p>
        </div>
        <div
          class='grid-col-4 realization-tile'

        >
          <div class='realization-tile-background'>

          </div>
          <p class='realization-tile-title my-0'>Modernizacja instalacji grzewczej i wymiana nawierzchni pl.
            Dominikański Wrocław</p>
          <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Zobacz więcej</p>
        </div>
        <div
          class='grid-col-4 realization-tile'

        >
          <div class='realization-tile-background'>

          </div>
          <p class='realization-tile-title my-0'>Modernizacja instalacji grzewczej i wymiana nawierzchni pl.
            Dominikański Wrocław</p>
          <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Zobacz więcej</p>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'Realizations'
}
</script>

<style scoped lang='scss'>
.realizations-tile-wrapper {
  padding-bottom: 5rem;

  .realization-tile {
    height: 550px;
    overflow: hidden;
    position: relative;
    margin-top:20px;


    &:nth-child(3n-1){
    margin-top:70px;
    }


    .realization-tile-background {
      position: absolute;
      top: 0px;
      height: 100%;
      width: 100%;
      left: 0px;
      background-image: url('~static/img/pages/main/zdjecie_teaser_firma1.png');
      background-repeat: no-repeat;
      background-size: cover;
      transition: all 0.3s ease-out;

      &:after {
        position: absolute;
        left: 0px;
        bottom: 0px;
        width: 100%;
        height: 50%;
        content: '';
        background: transparent linear-gradient(180deg, #00000000 0%, #000000 100%) 0% 0% no-repeat padding-box;
      }
    }


    .realization-tile-title {
      font-size: 1rem;
      font-weight: $semi-bold;
      color: $white;
      position: absolute;
      bottom: 25px;
      left: 0px;
      width: calc(100% - 40px);
      padding-left: 20px;
      padding-right: 20px;
      transition: all 0.3s ease-out;
    }

    .paragraph-3-tile {
      position: absolute;
      bottom: 30px;
      left: 50%;
      margin-right: -50%;
      transform: translate(-50%, -50%);
      transition: all 0.3s ease-out;
      opacity: 0;
    }

    &:hover {
      cursor: pointer;

      .realization-tile-background {
        transform: scale(1.1);
      }

      .realization-tile-title {
        bottom: 85px;

      }

      .paragraph-3-tile {
        opacity: 1;
      }

    }

  }
}

</style>
