<template>
  <section id='year2000'>
    <div class='intro-year-wrapper'>
      <div class='container'>
        <client-only>
  <drawn20002 class='drawn-wrapper' />
          <drawn20000 class='drawn-wrapper' />
          <drawn200000 class='drawn-wrapper' />
          <drawn2000000 class='drawn-wrapper' />

        </client-only>
        <div class='grid'>
          <div
            class='grid-col-6'
          >
            <h2 class='h2 mt-0'>Lata największych wyzwań</h2>
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
import Drawn20002 from './svg/year2000/Drawn20002'
import Drawn20000 from './svg/year2000/Drawn20000'
import Drawn200000 from './svg/year2000/Drawn200000'
import Drawn2000000 from './svg/year2000/Drawn2000000'

export default {
  name: 'Year2000',
  components: { Drawn2000000, Drawn200000, Drawn20000, Drawn20002, YearImages }
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
