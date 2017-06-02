$(document).on 'turbolinks:load', ()->

  $('#main-menu a').on "click", (e)->
    e.preventDefault()
    if @text == 'Test' 
      $(".header-second-bar").show()
    else      
      $(".header-second-bar").hide()


  $('#test-table input').on "change", ()->
    index = $(this).parent().index()
    row = $(this).closest("tr")
    
    if row.attr('class') == 'start-read' or row.attr('class') == 'end-read'
      start_read = $('.start-read').children().eq(index).children().val()
      end_read = $('.end-read').children().eq(index).children().val()
      volume = end_read - start_read
      $(".volume").children().eq(index).html(volume)
    else if row.attr('class') == 'ref-start-read' or row.attr('class') == 'ref-end-read'
      start_read = $('.ref-start-read').children().eq(index).children().val()
      end_read = $('.ref-end-read').children().eq(index).children().val()
      volume = end_read - start_read
      $(".ref-volume").children().eq(index).html(volume)


return