<template>
  <section id='Meet'>


    <div class='container'>
      <client-only><drawn-p /></client-only>
      <div class='grid'>
        <div
          class='grid-col-2'
        >
        </div>
        <div
          class='grid-col-8'
        >
          <divider />
          <p class='paragraph-intro mb-2'>
            Nasza firma stawia na LUDZI, ponieważ to oni tworzą wizerunek firmy i powodują, że odnosi sukcesy. Co roku dajemy szansę najlepszym oraz szkolimy młodych ludzi chcących pracować pod skrzydłami doświadczonych osób.
          </p>
          <h2 class='h2 mt-10 mb-2'>Rekrutujemy na stanowiska</h2>
          <h2 class='h2 mb-7'>Jeśli chciałbyś dołączyć do nas</h2>
        </div>
      </div>
    </div>

  </section>
</template>

<script>
import Divider from '../util/Divider'
import DrawnP from './DrawnP'

export default {
  name: 'meet',
  components: { DrawnP, Divider }
}
</script>

<style scoped lang='scss'>
section#Meet {
  padding-top: 100px;

}

</style>
