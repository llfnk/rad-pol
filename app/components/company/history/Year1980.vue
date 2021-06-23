<template>
  <section id='year1980'>
    <div class='intro-year-wrapper'>
      <div class='container'>
        <client-only>
          <drawn1 class='drawn-wrapper drawn1' />
          <drawn9 class='drawn-wrapper drawn9'></drawn9>
          <drawn8 class='drawn-wrapper drawn8' />
          <drawn0 class='drawn-wrapper drawn0' />

        </client-only>
        <div class='grid'>
          <div
            class='grid-col-6'
          >
            <h2 class='h2 mt-0'>Początki</h2>
            <p class='paragraph-intro'>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea. Tekst może być ale nie musi.</p>
          </div>
        </div>

      </div>
    </div>
    <year-images />
  </section>
</template>

<script>
import YearImages from './YearImages'
import Drawn1 from './svg/year1980/Drawn1'
import Drawn9 from './svg/year1980/Drawn9'
import Drawn8 from './svg/year1980/Drawn8'
import Drawn0 from './svg/year1980/Drawn0'

export default {
  name: 'Year1980',
  components: { Drawn0,  Drawn8, Drawn9, Drawn1, YearImages }
}
</script>

<style scoped lang='scss'>
.intro-year-wrapper {
  padding-top:160px;
  .drawn-wrapper:not(:first-child){
    margin-left:42px;
  }

}

</style>
