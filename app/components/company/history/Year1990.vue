<template>
  <section id='year1990' class='section-black'>
    <div class='intro-year-wrapper'>
      <div class='container'>
        <client-only>
          <drawn1 class='drawn-wrapper drawn1' />
          <drawn9 class='drawn-wrapper drawn9'></drawn9>
          <drawn99 class='drawn-wrapper drawn99' />
          <drawn0 class='drawn-wrapper drawn0' />

        </client-only>
        <div class='grid'>
          <div
            class='grid-col-6'
          >
            <h2 class='h2 mt-0 white'>Dekada szybkiego rozwoju</h2>
            <p class='paragraph-intro white'>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Tekst może być ale nie musi.</p>
          </div>
        </div>

      </div>
    </div>
    <year-images class='section-black' />
  </section>
</template>

<script>
import YearImages from './YearImages'
import Drawn1 from './svg/year1990/Drawn1'
import Drawn9 from './svg/year1990/Drawn9'
import Drawn99 from './svg/year1990/Drawn99'
import Drawn0 from './svg/year1990/Drawn0'

export default {
  name: 'Year1990',
  components: { Drawn0, Drawn9, Drawn99, Drawn1, YearImages }
}
</script>

<style scoped lang='scss'>
section#year1990{
  .intro-year-wrapper {
    padding-top:160px;
    .drawn-wrapper:not(:first-child){
      margin-left:42px;
    }

  }

  &.section-black{
    background-color:$c0;
  }

}


</style>
