$(document).on('turbolinks:load', function(){
  /*---------------------------------------------
    トップに戻るボタン
  ---------------------------------------------*/
  var  $backToTop = $('#back-to-top');
  
  $backToTop.click(function(e){
    e.preventDefault();
    $('html, body').animate({scrollTop: 0});
  });
});
