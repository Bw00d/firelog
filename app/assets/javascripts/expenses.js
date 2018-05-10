$(document).ready(function(){

   var month = localStorage.getItem('month')
   $('li.months').filter(function(){return this.value == month}).addClass('selected-month');
   $('#month-header').text($('li.selected-month').text());


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

   // payment
   $('.payment-logo').click(function(event){
   	value = $(this).closest('li').attr('id');
   	$('#payment-id').val(value);
   	$('.payment-logo').toggleClass('unselected');
	  $(this).toggleClass('unselected');
	  event.preventDefault();
   });

   // months
   $('.months').click(function(event){
   	$('li.months').removeClass('selected-month');
   	$(this).addClass('selected-month');
   	event.preventDefault();
   });



   // retrieving month expenses
   $('li.months').click(function(event){
      $('#search-field').val($(this).val());
         $('#search-form').submit();
         event.preventDefault;
         localStorage.setItem('month', $(this).val())
   });
   
      

$(document).on("change", "select#category", function(e){
   $(this).attr("expense_vendor_id", $(this).val()); // this sets the "data-option-value" to the value

	});

});