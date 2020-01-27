$(document).on('turbolinks:load', function(){
  var $workImg = $('.works__img'),
      $frame = $('#modal-outer'),
      $modal = $('#modal');

  $workImg.on('click', function(){
    $frame.addClass('modal-open');
  });

  $('#modal-close-btn').on('click', function(){
    $frame.removeClass('modal-open');
  });
});
