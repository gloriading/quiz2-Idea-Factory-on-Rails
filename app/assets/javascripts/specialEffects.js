$(document).ready(function() {


$('.card-header .fa-plus-circle').on('click',function(){
  $(this).addClass('hide');
  $(this).next().removeClass('hide');
  $(this).parentsUntil('div.frame').find('.card-body').removeClass('hide');
})

$('.card-header .fa-minus-circle').on('click',function(){
  $(this).prev().removeClass('hide');
  $(this).addClass('hide');
  $(this).parentsUntil('div.frame').find('.card-body').addClass('hide');
})

});
