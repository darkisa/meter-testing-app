#calculate the volume of the corresponding column. No return 
calculate_volume = (object, index) ->
  row = object.closest("tr")

  if row.attr('id') == 'start-read' or row.attr('id') == 'end-read'
    start_read = $('#start-read').children().eq(index).children().val()
    end_read = $('#end-read').children().eq(index).children().val()
    volume = end_read - start_read
    $("#volume").children().eq(index).html(volume)
  else if row.attr('id') == 'ref-start-read' or row.attr('id') == 'ref-end-read'
    start_read = $('#ref-start-read').children().eq(index).children().val()
    end_read = $('#ref-end-read').children().eq(index).children().val()
    volume = end_read - start_read
    $("#ref-volume").children().eq(index).html(volume)

#calcualte the accuracy of the corresponding column and return the value if its not infinity or NaN
calculate_accuracy = (index) ->
  register_volume = $("#volume").children().eq(index).html()
  reference_volume = $("#ref-volume").children().eq(index).html()
  accuracy = register_volume / reference_volume
  if isFinite(accuracy)
    return accuracy.toFixed(3)
  else
    return 

#event handlers
$(document).on 'turbolinks:load', ()->

  #expand the second header when the user selects test 
  $('#main-menu a').on "click", (e)->
    e.preventDefault()
    if @text == 'Test' 
      $(".header-second-bar").show()
    else      
      $(".header-second-bar").hide()

  #calculate the total volume for the reference or baseline meter and calculate the accuracy
  $('#test-table input').on "change", (e)->
    object = $(this) #set this to object for cleaner code
    index = object.parent().index() #get the column number of what needs to be altered
    calculate_volume(object, index) 
    accuracy = calculate_accuracy(index)
    $("#accuracy").children().eq(index).html(accuracy) #assign the returned accuracy to the appropriate cell

return