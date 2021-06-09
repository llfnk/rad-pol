$(function () {

//TU WPISUJEMY
  /* Begin jQuery Countdown */

  //interwał w minutach
  intervalMinutes = 1;
  nowDate = new Date();
  //Czas w formacje (year, month-1, day, hours, minutes, seconds, milliseconds)
  setDate = new Date(2017, 01 - 1, 12, 17, 0, 0);
  while (nowDate > setDate) {
    setDate.setMinutes(setDate.getMinutes() + intervalMinutes);
  }

  var myVar = setInterval(function () {
    myTimer()
  }, 1000);

  function myTimer() {
    nowDate = new Date();
    if (nowDate > setDate) {
      location.reload();
    }
  }

  $("#countdown").countdown({until: setDate, format: 'DHMS', padZeroes: true});
  /* End jQuery Countdown */

});
