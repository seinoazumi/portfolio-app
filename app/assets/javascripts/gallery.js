$(document).ready(function(){
  $(whindow).load(function(){
    var $container = $('#works');
    $container.imagesLoaded( function() {
      $container.masonry({ //mansonryの対象を#worksにする
        itemSelector: '.works__img',
        columnWidth: '.col', 
        isFitWidth: true  //親要素の幅に合わせてカラム数を自動調整
      });  
    });
  });
});
