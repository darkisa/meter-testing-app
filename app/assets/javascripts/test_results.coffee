$(document).on "click", "#main-menu a", (e)->
  e.preventDefault()
  if this.text == 'Test' 
    $(".header-second-bar").show()
  else      
    $(".header-second-bar").hide()
return