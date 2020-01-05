$(document).ready(function(){

  /*---------------------------------------------
    トップに戻るボタン
  ---------------------------------------------*/

  var  $backToTop = $('#back-to-top');
  //ウィンドウがスクロールしたらボタンを表示
  $(window).scroll(function(){
    if ($(this).scrollTop() > 500){
      $backToTop.fadeIn();
    } else {
      $backToTop.fadeOut();
    };
  });

  $backToTop.click(function(e){
    e.preventDefault();
    $('html, body').animate({scrollTop: 0});
  });
});
