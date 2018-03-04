$(document).ready(function(){

   // date picker
   $("#date").fdatepicker({format: 'yyyy-mm-dd'});

$(document).on("change", "select#category", function(e){
   $(this).attr("expense_vendor_id", $(this).val()); // this sets the "data-option-value" to the value

	});

});