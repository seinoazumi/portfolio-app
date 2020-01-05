$(document).ready(function(){
  var $menuBtn = $('#menu-btn'),
      $pageNavBlock = $('.sp-page-nav__block');

  $menuBtn.click(function(){
    $pageNavBlock.toggleClass('open');
  });
});
