$(document).on('turbolinks:load', function(){
    var $container = $('#works');

    $container.imagesLoaded( function() {
      $container.masonry({ //mansonryの対象を#worksにする
        itemSelector: '.works__frame',
        columnWidth:  280,
        gutter: 20
      });  
    });

});
