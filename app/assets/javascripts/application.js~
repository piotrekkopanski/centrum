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
//= require effective_form_inputs
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
$(function() {
  $(function () {
            $('.VAT, .subtot, .grdtot').prop('readonly', true);
            var $tblrows = $("#tblProducts tbody tr");

            $tblrows.each(function (index) {
                var $tblrow = $(this);

                $tblrow.find('.amount, .vat').on('change', function () {

                
                    if (!isNaN(subTotal)) {

                        $tblrow.find('.subtot').val(subTotal.toFixed(2));
                        var grandTotal = 0;

                        $(".subtot").each(function () {
                            var stval = parseFloat($(this).val());
                            grandTotal += isNaN(stval) ? 0 : stval;
                        });

                        $('.grdtot').val(grandTotal.toFixed(2));
                    }
                });
            });
        });
});
$(function() {
  $(function () {
            $('.VAT, .subtot, .grdtot, .total, .subtot, .plus, .pluses').prop('readonly', true);
            var $tblrows = $("#tblProducts tbody tr");

            $tblrows.each(function (index) {
                var $tblrow = $(this);

                $tblrow.find('.subtot, .total').on('change', function () {

                    var qty = $tblrow.find("[ip=sub]").val();
                    if( qty.length == 0 ){
                    var qty =0;
                     };
                    var price = $tblrow.find("[ip=total]").val();
                    var subTotal = parseInt(qty, 10) * parseFloat(price) * 0.01;
                    if (!isNaN(subTotal)) {

                        
                        var grandTotal = 0;

                        $(".total").each(function () {
                            var stval = subTotal;
                            grandTotal += isNaN(stval) ? 0 : stval;
                        });

                        $('.pluses').val(grandTotal.toFixed(2));
                    }
        $("[il=bum]").on('keyup change', function(){
    $('#results').html(( parseFloat($('#El').val()) + parseFloat($('#E_CCNM').val())).toFixed(2));
});
                });
            });
        });
})
