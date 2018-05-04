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

   // test month
   $('.months').click(function(event){
      $('$month') = 2;

      event.preventDefault();
   });

   // showing month charts
   $('.month-chart').hide();
   $('#may').show();
   $( "a:contains('May')" ).click(function(){
      $('.month-chart').hide();
      $('#may').show();
   });
   $( "a:contains('April')" ).click(function(){
      $('.month-chart').hide();
      $('#april').show();
   });
   $( "a:contains('March')" ).click(function(){
      $('.month-chart').hide();
      $('#march').show();
   });
   $( "a:contains('February')" ).click(function(){
      $('.month-chart').hide();
      $('#february').show();
   });


$(document).on("change", "select#category", function(e){
   $(this).attr("expense_vendor_id", $(this).val()); // this sets the "data-option-value" to the value

	});

});