// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
$(function() {
$( "select" )
  .change(function () {
    var str = "";
    $( "select option:selected" ).each(function() {
      str += $( this ).text() + " ";
    });
    $( '#vat' ).text( str );
  })
  .change();
 });
$(function() {
$(document).ready(function(){
     $('.p').keyup(function(){

       var val2 = 1;
       $("output[ip^='p']").each(function()
       {
           if($(this).val().length != 0)
           {
       val2 = val2 + parseInt($(this).val()) 
           }
    });
        
        $('#suma').val(val2);
    });
});
})
