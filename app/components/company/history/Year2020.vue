<template>
  <section id='year2020'>
    <div class='intro-year-wrapper'>
      <div class='container'>
        <client-only>
          <drawn20202 class='drawn-wrapper' />
          <drawn20200 class='drawn-wrapper' />
          <drawn202022 class='drawn-wrapper' />
          <drawn202000 class='drawn-wrapper' />

        </client-only>
        <div class='grid'>
          <div
            class='grid-col-6'
          >
            <h2 class='h2 mt-0'>Czas pandemii</h2>
            <p class='paragraph-intro'>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
              tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et
              justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea. Tekst może być ale nie musi.</p>
          </div>
        </div>

      </div>
    </div>
    <year-images />
  </section>
</template>

<script>
import YearImages from './YearImages'
import Drawn20202 from './svg/year2020/Drawn20202'
import Drawn20200 from './svg/year2020/Drawn20200'
import Drawn202022 from './svg/year2020/Drawn202022'
import Drawn202000 from './svg/year2020/Drawn202000'


export default {
  name: 'Year2020',
  components: { Drawn202000, Drawn202022, Drawn20200, Drawn20202, YearImages }
}
</script>

<style scoped lang='scss'>
.intro-year-wrapper {
  padding-top: 160px;

  .drawn-wrapper:not(:first-child) {
    margin-left: 42px;
  }

}

</style>
