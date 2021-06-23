<template>
  <header>
    <div class='menu' :class="{'active': menuOpen}">
      <ul class='menu-list'>
        <li><nuxt-link :to="{ name: 'firma' }">firma</nuxt-link></li>
        <li><a href='#'>oferta</a></li>
        <li><nuxt-link :to="{ name: 'realizacje' }">Realizacje</nuxt-link></li>
        <li><nuxt-link :to="{ name: 'wynajem-sprzetu' }">Wynajem sprzętu</nuxt-link></li>
        <li><nuxt-link :to="{ name: 'praca' }">Praca</nuxt-link></li>
        <li><nuxt-link :to="{ name: 'aktualnosci' }">Aktualności</nuxt-link></li>
        <li><a href='#'>kontakt</a></li>
      </ul>
      <div class='menu-button' @click='menuOpen = !menuOpen'>

        <div class='menu-line'></div>
      </div>

    </div>
  </header>
</template>

<script>
export default {
  name: 'HeaderLayout',
  data() {
    return {
      menuOpen: false
    }
  },
  methods: {
    goToLang(locale) {
      this.$router.push(this.switchLocalePath(locale))
    }
  }
}
</script>

<style scoped lang='scss'>
@import '~assets/style/components/header';

header {
  .menu {
    width: 60px;
    height: 60px;
    display: flex;
    align-items: center;
    background-color: $primary;
    position: fixed;
    right: 50px;
    top: 20px;
    z-index: 99;
    transition: all 0.3s ease-out;

    .menu-list {
      display: none;
      left: 0px;
      list-style: none;
      padding-left: 0px;
      margin-left: 0px;

      li {
        margin-left: 90px;
        font-weight: 600;
        color: $white;
        font-size: 2.5rem;
        line-height: 3rem;
        margin-top: 2.375rem;
        margin-bottom: 2.375rem;
        letter-spacing: 0.125rem;
        text-transform: uppercase;

        a {
          color: $white;
          text-decoration: none;

          &:hover, &:focus {
            color: $white;
          }

        }

      }
    }

    &.active {
      width: 653px;
      height: 100%;
      top: 0px;
      right: 0px;

      .menu-list {
        display: block;
      }
    }

    .menu-button {
      background-color: $primary;
      position: fixed;
      right: 50px;
      top: 20px;
      display: flex;
      align-items: center;
      width: 60px;
      height: 60px;
      cursor: pointer;

      .menu-line {
        width: 32px;
        background-color: $white;
        height: 2px;
        margin-left: 17px;
        position: relative;
        transition: all 0.3s ease-out;

        &:before, &:after {
          content: '';
          position: absolute;
          width: 23px;
          height: 2px;
          background-color: $white;
          transition: all 0.3s ease-out;

        }

        &:before {
          bottom: 11px;
        }

        &:after {
          top: 11px;
        }

      }

      &:hover {
        .menu-line {
          width: 27px;

          &:before, &:after {
            width: 27px;

          }

        }
      }
    }


  }
}

</style>
