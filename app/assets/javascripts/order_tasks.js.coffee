$ ->
  $('.edit_order_task').children('input[type=checkbox]').on 'change', () ->
    $(this).parent('form').trigger 'submit.rails'
    $(this).parents('tr').first().toggleClass 'success'