$(document).on('turbolinks:load', function(){
  var $workImg = $('.works__img'),
      $frame = $('#modal-outer'),
      $modal = $('#modal');

  $workImg.on('click', function(){
    $modal.empty();
    $frame.addClass('modal-open');
  });

  $('#modal-outer, #modal-close-btn').on('click', function(){
    $frame.removeClass('modal-open');
  });
});
