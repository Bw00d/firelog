$(document).on('turbolinks:load', function(){
  $('#new-budget-button').click(function() {
    $('#budget-form').show();
    $(this).hide();
  });
  $('#hide-show-button').click(function() {
    $('#budget-form').hide();
    $('#new-budget-button').show();
  });

  // Budget Items
  $('#new-budget-item-button').click(function() {
    $('#budget-item-form').show();
    $(this).hide();
  });
  $('#hide-budget-item-button').click(function() {
    $('#budget-item-form').hide();
    $('#new-budget-item-button').show();
  });
});