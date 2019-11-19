$( document ).on('turbolinks:load', function(){
  $('#new-expenditure-button').click(function() {
    $('#expenditure-form').show();
    $(this).hide();
  });
  $('#hide-expenditure-button').click(function() {
    $('#expenditure-form').hide();
    $('#new-expenditure-button').show();
  });
});
