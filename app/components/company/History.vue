<template>
  <section id='History'>
    <div class='container'>
      <div class='grid'>
        <div class='grid-col-2'></div>
        <div
          class='grid-col-8'
        >
          <h2 class='h2'>Historia</h2>
          <p class='paragraph-intro'>Historia firmy RAD-POL jest przede wszystkim oparta na solidnym zarządzaniu przez
            osoby mocno zaangażowane w rozwój firmy, posiadające duże doświadczenie w branży, jak również niezbędne
            kwalifikacje i wykształcenie. Jest to historia wzrostu i ewolucji, która doprowadziła tę początkowo
            niewielką firmę do pozycji jednego z większych przedsiębiorstw budowlanych na terenie Dolnego śląska.</p>
        </div>
      </div>
    </div>

    <year1980 />
    <year1990 />
    <year2000 />
    <year2010 />
    <year2020 />
  </section>
</template>

<script>
import Year1980 from './history/Year1980'
import Year1990 from './history/Year1990'
import Year2000 from './history/Year2000'
import Year2010 from './history/Year2010'
import Year2020 from './history/Year2020'
export default {
  name: 'History',
  components: { Year2020, Year2010, Year2000, Year1990, Year1980 }
}
</script>

<style scoped>

</style>
