<template>
  <footer>
    <div class='strip-footer strip-top'>

      <div class='strip-top-smile'></div>
      <h2 class='h2 white'>Nowy projekt? Pomożemy :)</h2>
      <div class='btn border-white color-white'><span>Porozmawiajmy</span></div>
    </div>
    <div class='strip-footer strip-middle'>
      <div class='container'>
        <div class='grid'>
          <div
            class='grid-col-3'
          >
            <div class='logo-footer'>

            </div>
          </div>
          <div
            class='grid-col-3'
          >
            <ul class='menu-list'>
              <li><a href='#'>firma</a></li>
              <li><a href='#'>oferta</a></li>
              <li><a href='#'>realizacje</a></li>
              <li><a href='#'>wynajem sprzętu</a></li>
              <li><a href='#'>praca</a></li>
              <li><a href='#'>aktualności</a></li>
              <li><a href='#'>kontakt</a></li>
            </ul>
          </div>
          <div
            class='grid-col-3'
          >
            <ul class='menu-list'>
              <li>P.W. RADPOL Sp. z o.o.</li>
              <li>ul. Ludwika Solskiego 4A/6</li>
              <li>52-416 Wrocław</li>
              <li>NIP 899-23-14-199</li>
              <li>REGON 932096961</li>
              <li>KRS 0000160027</li>
            </ul>
          </div>
          <div
            class='grid-col-3'
          >
            <ul class='menu-list'>
              <li>Tel. 71 371 88 22</li>
              <li>administracja@rad-pol.pl</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class='strip-footer strip-bottom'>

    </div>
  </footer>
</template>

<script>
export default {
  name: 'FooterLayout'
}
</script>

<style scoped lang='scss'>
@import '~assets/style/components/footer';

footer {
  min-height: 100px;
  width: 100%;

  .strip-footer {
    width: 100%;
    position: relative;

    &.strip-top {
      padding-top: 86px;
      padding-bottom: 140px;
      background-image: url('~static/img/footer/bg_red.png');
      background-size: cover;
      background-position: center;
      display: flex;
      align-items: center;
      flex-direction: column;

      .strip-top-smile {
        width: 90px;
        height: 90px;
        background-image: url('~static/img/footer/smile.svg');
        background-size: 100%;

      }

    }

    &.strip-middle {
      background-color: $black;
      padding-top:90px;
      padding-bottom:70px;

      .logo-footer{
        background-image: url('~static/img/footer/radpol-white.svg');
        width:160px;
        height:64px;
        background-size:100%;
        margin-top:25px;
      }

      .menu-list{
        padding-left:0px;
        list-style: none;
        position:relative;
        margin-top:20px;
        margin-bottom:20px;
        &:before{
          width:100px;
          height:1px;
          background-color:$primary;
          content: '';
          position:absolute;
          top:-35px;
          left:0px;
        }
        li{
          font-size:1rem;
          color:$white;
          line-height:2.25rem;
          a{
            color:$white;
            text-decoration: none;
            text-transform: uppercase;
            &:hover{
              color:$white;
              text-decoration: none;
            }
          }
        }
      }
    }

    &.strip-bottom {
      height: 75px;
      background-color: $c0;
    }
  }


}
</style>
