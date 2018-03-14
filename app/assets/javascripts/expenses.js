$(document).ready(function(){

	$(".selectize").selectize();

   // date picker
   $("#date").fdatepicker({format: 'yyyy-mm-dd'});

   // category
   $('.category-button').click(function(event){
		  value = $(this).find('span.hidden-id').text();

		  $('.category-button').toggleClass('unselected');
		  $('.add-category-button').toggleClass('unselected');

		  $(this).toggleClass('unselected');
		 
		  $('#expense_category_id').val(value);
		  event.preventDefault();
		});

   $('.add-category-button').click(function(event){
   	$('.category-button').toggleClass('unselected');
		 $('.add-category-button').toggleClass('unselected');
		 $('#category-form').show();
		 event.preventDefault();
   	});

   $('#comment-icon').click(function(event){
   	$('#add-comment').show();
		$(this).hide();
		 event.preventDefault();
   	});


$(document).on("change", "select#category", function(e){
   $(this).attr("expense_vendor_id", $(this).val()); // this sets the "data-option-value" to the value

	});

});