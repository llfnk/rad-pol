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
          <h2 class='h2'>Poznaj RADPOL</h2>
          <p class='paragraph-intro'>
            P.W. RADPOL buduje i remontuje drogi, parkingi, konstrukcje powierzchni przemysłowych, wszelkiego rodzaju konstrukcje drogowe. Zajmujemy się również wielosezonowym utrzymaniem sieci drogowych oraz doradztwem technicznym. Realizujemy inwestycje o bardzo zróżnicowanej wielkości i stopniu trudności.
          </p>
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
