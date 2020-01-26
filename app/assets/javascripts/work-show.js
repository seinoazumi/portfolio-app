$(document).on('turbolinks:load', function(){
  var $workImg = $('#work-img'),
      $workId = $(this).data('id');

  $workImg.on('click', function(){
    console.log($workId);
  });

});
