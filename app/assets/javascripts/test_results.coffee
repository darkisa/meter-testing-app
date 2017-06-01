$(document).on 'turbolinks:load', ()->

  $('#main-menu a').on "click", (e)->
    e.preventDefault()
    if this.text == 'Test' 
      $(".header-second-bar").show()
    else      
      $(".header-second-bar").hide()

  $('#test-table input').on "keyup", ()->
    console.log(this)

return