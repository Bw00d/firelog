$( document ).on('turbolinks:load', function(){
   var month = localStorage.getItem('month')
   $('li.months').filter(function(){return this.value == month}).addClass('selected-month');
   $('#month-header').text($('li.selected-month').text());
   var year = localStorage.getItem('year')
   $('li.years').filter(function(){return this.value == year}).addClass('selected-month');
   


	$(".selectize").selectize();

   // date picker
   $("#date").fdatepicker({format: 'yyyy-mm-dd'});
   $("#due-date").fdatepicker({format: 'yyyy-mm-dd'});

   // category
   $('.category-button').click(function(event){
		  value = $(this).find('span.hidden-id').text();

		  $('.category-button').toggleClass('unselected');
		  $('#add-category-button').toggleClass('unselected');

		  $(this).toggleClass('unselected');

		  $('#category-field').val(value);
      $("html, body").animate({ scrollTop: 0 }, "slow");
      return false;
		  event.preventDefault();
		});

   $('#add-category-button').click(function(event){
   	$('.category-button').toggleClass('unselected');
		 $('#add-category-button').toggleClass('unselected');
     $('.category-button').hide();
		 $('#category-form').show();
     $('#category-form').animate({ width: '350' }, 'fast')
		 event.preventDefault();
   	});
    $(window).click(function() {
      if($('#category-form').is(':visible')){ 
        $('#category-form').hide();
        $('.category-button').show();
      }
    });

    $('#category-input').click(function(event){
        event.stopPropagation();
    });
    $('#add-category-button').click(function(event){
        event.stopPropagation();
    });
    $('#add-cat').click(function(event){
        event.stopPropagation();
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

   // years
   $('.years').click(function(event){
   	$('li.years').removeClass('selected-year');
   	$(this).addClass('selected-year');
   	event.preventDefault();
   });


   // retrieving month expenses
   $('li.months').click(function(event){
      localStorage.setItem('month', $(this).val())
      $('#month-field').val(localStorage.getItem('month'));
      if (localStorage.getItem('year') != "") {
        $('#year-field').val(localStorage.getItem('year'));
      }
      else {
        $('#year-field').val(0);
      }
      $('#search-form').submit();
      event.preventDefault;
   });

   // retrieving expenses by year
   $('li.years').click(function(event){
      localStorage.setItem('year', $(this).val())
      $('#year-field').val(localStorage.getItem('year'));
      if (localStorage.getItem('month') != "") {
        $('#month-field').val(localStorage.getItem('month'));
      } else {
        $('#month-field').val(0);
      }
      $('#search-form').submit();
      event.preventDefault;
   });

   // validating category
   
   $('#submit-expense').click(function(event){
        if ($('#category-field').val() == "") {
          event.preventDefault();
          $('.validation-box').show().delay(2000).fadeOut();
      }
   });



$(document).on("change", "select#category", function(e){
   $(this).attr("expense_vendor_id", $(this).val()); // this sets the "data-option-value" to the value

	});

});
