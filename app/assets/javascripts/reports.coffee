$('#test_result').ready ->
  alert "page loaded"
  $.ajax
    type: 'GET',
    url: '/reports',
    dataType: 'json',
    success: (response) ->
      create_chart(response)
    error: (response) ->
      console.log 'error'

create_chart = (chart_data) ->
  results = []
  counter = 1
  $.each chart_data, (key, value) ->
    if key.match(/^tp.*accuracy$/) && value != null
      results.push( { tp: 'TP' + counter, accuracy: value } )
      counter++

  new (Morris.Line)(
    element: 'test_result'
    data: results
    xkey: 'tp'
    ykeys: [ 'accuracy' ]
    yLabelFormat: foramt_percentage = (y) -> return y * 100 + '%'
    labels: [ 'Accuracy' ]
    parseTime: false
    goals: [1]
    goalLineColors: ['green']
    smooth: false
    )
