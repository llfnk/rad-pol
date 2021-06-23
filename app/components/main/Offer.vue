<template>
  <section id='Offer'>
    <div class='container'>
      <div class='grid'>
        <div
          class='grid-col-4'
        >
          <div class='offer-tile offer-tile1'>
            <div class='offer-tile-text-wrapper'>
              <h3 class='h3 white my-0'>Firma</h3>
              <div class='tile-wrapper-middle'><p class='paragraph-3 paragraph-3-tile-middle white my-0 '>Jesteśmy przedsiębiorstwem budowlano - instalacyjnym z ponad 35 letnim doświadczeniem</p></div>
              <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Poznaj nas</p>
            </div>
          </div>
        </div>
        <div
          class='grid-col-4'
        >
          <div class='offer-tile offer-tile2'>
            <div class='offer-tile-text-wrapper'>
              <h3 class='h3 white my-0'>Oferta</h3>
              <div class='tile-wrapper-middle'><p class='paragraph-3 paragraph-3-tile-middle white my-0 '>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.</p></div>
              <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Zobacz</p>
            </div>
          </div>
        </div>
        <div
          class='grid-col-4'
        >
          <div class='offer-tile offer-tile3'>
            <div class='offer-tile-text-wrapper'>
              <h3 class='h3 white my-0'>Wynajem sprzętu</h3>
              <div class='tile-wrapper-middle'><p class='paragraph-3 paragraph-3-tile-middle white my-0 '>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.</p></div>
              <p class='paragraph-3 paragraph-3-tile uppercase h-line white my-0 '>Poznaj nas</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'offer'
}
</script>

<style scoped lang='scss'>
section#Offer {
  margin-top: 100px;
  margin-bottom: 100px;

  .offer-tile {
    width: 100%;
    height: 644px;
    background-image: url('~static/img/pages/main/zdjecie_teaser_firma1.png');
    background-size: 100%;
    margin-bottom: 10px;
    position: relative;
    &:before {
      background: linear-gradient(transparent, #000000);
      position: absolute;
      bottom: 0px;
      left: 0px;
      content: '';
      width: 100%;
      height: 400px;
    }

    &:after {
      height: 44px;
      width: 100%;
      position: absolute;
      bottom: 0px;
      background-color: $ee;
      content: '';
    }
    &.offer-tile1{
      background-image: url('~static/img/pages/main/zdjecie_teaser_firma1.png');
      &:after {
        background-color: $ee;
      }
    }
    &.offer-tile2{
      background-image: url('~static/img/pages/main/zdjecie_teaser_firma2.png');
      &:after {
        background-color: $dd;
      }
    }
    &.offer-tile3{
      background-image: url('~static/img/pages/main/zdjecie_teaser_firma3.png');
      &:after {
        background-color: $cc;
      }
    }



    .offer-tile-text-wrapper {
      position: absolute;
      width: 100%;
      bottom: 132px;
      text-align: center;

      h3 {
        position: absolute;
        left: 50%;
        margin-right: -50%;
        transform: translate(-50%, -50%);
        bottom: 85px;
        transition: all 0.3s ease-out;
      }

      p.paragraph-3-tile {
        position: absolute;
        left: 50%;
        margin-right: -50%;
        transform: translate(-50%, -50%);
        bottom: 55px;
        transition: all 0.3s ease-out;

      }
      .tile-wrapper-middle{
        position: absolute;
        bottom: 70px;
        width:100%;
      }
      p.paragraph-3-tile-middle {
        transition: all 0.3s ease-out;
        padding-left:40px;
        padding-right:40px;
        text-align: left;
        line-height:1.5;
        opacity:0;
      }
    }


    &:hover {
      cursor: pointer;

      .offer-tile-text-wrapper {

        h3 {

          bottom: 125px;
        }

        p.paragraph-3-tile {

          bottom: 0px;
        }
        p.paragraph-3-tile-middle{
          opacity:1;
        }
      }
    }
  }

}

</style>
