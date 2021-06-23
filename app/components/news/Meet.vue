<template>
  <section id='Meet'>

    <div class='container mb-5'>
    <client-only><drawn-a class='drawn-a' /></client-only>
      <div class='grid'>
        <div
          class='grid-col-2'
        >
        </div>
        <div
          class='grid-col-8'
        >
          <nav class='slidemenu'>
            <div class='menu-wrapper-anchor' id='Menu1'><a href='#'>Wszystkie</a></div>

            <div class='menu-wrapper-anchor' id='Menu2'><a href='#' >Mówią o nas</a></div>
            <div class='menu-wrapper-anchor' id='Menu3'><a href='#'>News</a></div>
            <div class='menu-wrapper-anchor' id='Menu4'><a href='#'>Technologie</a></div>

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
import DrawnA from './DrawnA'
export default {
  name: 'Meet',
  components: { DrawnA }
}
</script>

<style scoped lang='scss'>
section#Meet {

  .drawn-a {
    position: absolute;
    top: 40px;
    left: -250px;

  }

  nav.slidemenu {
    padding-left: 50px;
    padding-right: 50px;
    display: flex;
    margin-top: 90px;
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
