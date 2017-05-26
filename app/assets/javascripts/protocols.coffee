#Remove the lighbox if user clicks on the shaeded parts
$(document).on 'click', '#lightbox', (e)->
  if $(e.target).attr('id') == 'lightbox'
    $(this).remove()
  return