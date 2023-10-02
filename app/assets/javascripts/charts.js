$( document ).on('turbolinks:load', function(){

  // Get the localStorage values
   var category = localStorage.getItem('category-description')
   var category_id = localStorage.getItem('category-id')

  // years values are being capture in expenses.js
   // select the category stored in localStorage
   $("li.categories").each(function() {
        if ($(this).text() == category) {
          $(this).addClass('selected-category')
        } 
      });


   $('li.categories').click(function(event){
      value = $(this).closest('li').next('.hidden-id').text();
      description = $(this).text();
      localStorage.setItem('category-id', value)
      localStorage.setItem('category-description', description)
      $('.categories').removeClass('selected-category');
      $(this).addClass('selected-category');

      event.preventDefault();

      if (localStorage.getItem('category-id') != "") {
        $('#category-field').val(localStorage.getItem('category-id'));
      } 
        $('#search-form').submit();
    });


   // years
   $('.years').click(function(event){
    $('li.years').removeClass('selected-year');
    $(this).addClass('selected-year');
    event.preventDefault();
   });



   // retrieving expenses by year
   $('li.years').click(function(event){
      localStorage.setItem('chart-year', $(this).val())
      $('#year-field').val(localStorage.getItem('year'));
      
     if (!$('#category-field').val() === '') {
        $('#search-form').submit();
      }
      event.preventDefault;
   });


$(document).on("change", "select#category", function(e){
   $(this).attr("expense_vendor_id", $(this).val()); // this sets the "data-option-value" to the value

  });

});
