<template>
  <section id='Meet'>


    <div class='container '>
      <client-only>
        <drawn-r class='drawn-r'></drawn-r>
      </client-only>
      <div class='grid'>
        <div
          class='grid-col-2'
        >
        </div>
        <div
          class='grid-col-8'
        >
          <divider />
          <p class='paragraph-intro mt-3'>
            W swojej ponad 35-letniej działalności RADPOL ugruntowało swoją pozycję na rynku w zakresie robót drogowych,
            instalacyjnych i budowlanych, realizując setki projektów. Oto niektóre z nich. </p>
        </div>
      </div>
    </div>
    <div class='container mb-5'>
      <div class='grid'>
        <div
          class='grid-col-2'
        >
        </div>
        <div
          class='grid-col-8'
        >
          <nav class='slidemenu'>
            <div class='menu-wrapper-anchor' id='Menu1'><a href='#'>Wybrane realizacje</a></div>

            <div class='menu-wrapper-anchor' id='Menu2'><a href='#' >Roboty drogowe</a></div>
            <div class='menu-wrapper-anchor' id='Menu3'><a href='#'>Budownictwo inżynieryjno-lądowe</a></div>
            <div class='menu-wrapper-anchor' id='Menu4'><a href='#'>Roboty instalacyjne</a></div>

            <div class='slider'>
              <div class='bar'></div>
            </div>

          </nav>

        </div>
      </div>
    </div>


  </section>
</template>

<script>
import Divider from '../util/Divider'
import DrawnR from './DrawnR'
// import DrawnP from './DrawnP'

export default {
  name: 'Meet',
  components: { DrawnR, Divider }
}
</script>

<style scoped lang='scss'>
section#Meet {
  padding-top: 100px;

  .drawn-r {
    position: absolute;
    top: 0px;
    left: -150px;

  }

  nav.slidemenu {
    padding-left: 50px;
    padding-right: 50px;
    display: flex;
    margin-top: 160px;
    flex-wrap: wrap;

    .menu-wrapper-anchor {
      width: 25%;
      display: flex;

      a {
        width: 100%;
        text-align: center;
        align-self: flex-end;
        text-transform: uppercase;
        line-height: 1.5;
        font-size: 1rem;
        font-weight: $semi-bold;
        color: $black;
        text-decoration: none;
      }

      &:hover {
        cursor: pointer;
      }
    }


    .slider {
      width: 100%;
      height: 2px;
      display: block;
      background: $ee;
      margin-top: 8px;
      border-radius: 0px;
    }

    .slider .bar {
      width: 25%;
      height: 2px;
      background: $primary;
      border-radius: 0px;
    }

    .slider .bar {
      transition: all 500ms ease-in-out;
      -webkit-transition: all 500ms ease-in-out;
      -moz-transition: all 500ms ease-in-out;
    }

    /*Toggle*/


  }

  .slidemenu #Menu1:hover {
    color: red;
  }

  .slidemenu #Menu1:hover ~ .slider .bar {
    margin-left: 0;
  }

  .slidemenu #Menu2:hover ~ .slider .bar {
    margin-left: 25%;
  }
  .slidemenu #Menu3:hover ~ .slider .bar {
    margin-left: 50%;
  }
  .slidemenu #Menu4:hover ~ .slider .bar {
    margin-left: 75%;
  }

}

</style>
