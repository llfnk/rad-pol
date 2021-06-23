<template>
<div class='history-year-images-wrapper'>
  <div class='container'>
    <div class='grid'>
      <div class='year-images-tile grid-col-5'>
        <img src='~static/img/pages/company/image_tile.png'>
        <h5 class='my-1'>1983</h5>
        <p class='year-images-tile-description'>Rozpoczęcie działalności z zaledwie czterema pracownikami</p>
      </div>
      <div class='year-images-tile grid-col-5'>
        <img src='~static/img/pages/company/image_tile.png'>
        <h5 class='my-1'>1983</h5>
        <p class='year-images-tile-description'>Rozpoczęcie działalności z zaledwie czterema pracownikami</p>
      </div>
      <div class='year-images-tile grid-col-5'>
        <img src='~static/img/pages/company/image_tile.png'>
        <h5 class='my-1'>1983</h5>
        <p class='year-images-tile-description'>Rozpoczęcie działalności z zaledwie czterema pracownikami</p>
      </div>
      <div class='year-images-tile grid-col-5'>
        <img src='~static/img/pages/company/image_tile.png'>
        <h5 class='my-1'>1983</h5>
        <p class='year-images-tile-description'>Rozpoczęcie działalności z zaledwie czterema pracownikami</p>
      </div>
      <div class='year-images-tile grid-col-5'>
        <img src='~static/img/pages/company/image_tile.png'>
        <h5 class='my-1'>1983</h5>
        <p class='year-images-tile-description'>Rozpoczęcie działalności z zaledwie czterema pracownikami</p>
      </div>
      <div class='year-images-tile grid-col-5'>
        <img src='~static/img/pages/company/image_tile.png'>
        <h5 class='my-1'>1983</h5>
        <p class='year-images-tile-description'>Rozpoczęcie działalności z zaledwie czterema pracownikami</p>
      </div>
      </div>
    </div>
</div>
</template>

<script>
export default {
  name: 'YearImages'
}
</script>

<style scoped lang='scss'>
.history-year-images-wrapper{
  .year-images-tile{
    margin-bottom:80px;

    img{
      width:100%;
    }
    h5{
      font-size:1.25rem;
      font-weight:$bold;
      color: $primary;
      margin-top:1.25rem;
    }
    p.year-images-tile-description{
      font-weight: $medium;
      font-size:1.125rem;
      color: $black;
    }

    &:nth-child(4n-3){
      margin-right:191px;
      margin-top:100px;
    }
    &:nth-child(4n-2){
      margin-right:141px;
      margin-top:160px;
    }
    &:nth-child(4n-1){
      margin-left:141px;
      margin-top:100px;
    }
    &:nth-child(4n){
      margin-left:141px;
      margin-top:150px;
    }

  }

  &.section-black{
    .year-images-tile{
      h5{
        color: $primary;
      }
      p.year-images-tile-description{
        color: $white;
      }


    }
  }
}

</style>
