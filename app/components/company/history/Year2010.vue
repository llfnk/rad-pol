<template>
  <section id='year2010' class='section-black'>
    <div class='intro-year-wrapper'>
      <div class='container'>
        <client-only>
          <drawn20102 class='drawn-wrapper' />
          <drawn20100 class='drawn-wrapper' />
          <drawn20101 class='drawn-wrapper' />
          <drawn201000 class='drawn-wrapper' />
        </client-only>
        <div class='grid'>
          <div
            class='grid-col-6'
          >
            <h2 class='h2 mt-0 white'>Wzloty i upadki</h2>
            <p class='paragraph-intro white'>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
              eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Tekst może być ale nie
              musi.</p>
          </div>
        </div>

      </div>
    </div>
    <year-images class='section-black' />
  </section>
</template>

<script>
import YearImages from './YearImages'
import Drawn20102 from './svg/year2010/Drawn20102'
import Drawn20100 from './svg/year2010/Drawn20100'
import Drawn20101 from './svg/year2010/Drawn20101'
import Drawn201000 from './svg/year2010/Drawn201000'


export default {
  name: 'Year2010',
  components: { Drawn201000, Drawn20101, Drawn20100, Drawn20102, YearImages }
}
</script>

<style scoped lang='scss'>
section#year2010 {
  .intro-year-wrapper {
    padding-top: 160px;

    .drawn-wrapper:not(:first-child) {
      margin-left: 42px;
    }

  }

  &.section-black {
    background-color: $c0;
  }

}


</style>
