$(document).ready(function() {

$('.fa-plus-circle').on('click',function(){
  $(this).addClass('hide');
  $(this).next().removeClass('hide');
  $(this).parentsUntil('div.container').find('p').removeClass('hide');
})

$('.fa-minus-circle').on('click',function(){
  $(this).prev().removeClass('hide');
  $(this).addClass('hide');
  $(this).parentsUntil('div.container').find('p').addClass('hide');
})


});
