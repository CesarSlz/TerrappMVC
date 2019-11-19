$(window, document, undefined).ready(function() {

  $('.input').blur(function() {
    var $this = $(this);
    if ($this.val())
      $this.addClass('used');
    else
      $this.removeClass('used');
  });
  
  });


$('#tab1').on('click' , function(){
    $('#tab1').addClass('login-shadow', 'btnpresionado');
   $('#tab2').removeClass('signup-shadow', 'btnpresionado');
});

$('#tab2').on('click' , function(){
    $('#tab2').addClass('signup-shadow', 'btnpresionado');
   $('#tab1').removeClass('login-shadow', 'btnpresionado');

});