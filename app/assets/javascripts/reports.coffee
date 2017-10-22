jQuery ->
  $.ajax
    type: 'GET',
    url: '/reports',
    dataType: 'json',
    success: (response) ->
      create_chart(response)
    error: (response) ->
      console.log response

create_chart = (chart_data) ->
  results = []
  $.each chart_data, (key, value) ->
    if key.match(/^tp.*accuracy$/) && value != null
      results.push( { tp: key, accuracy: value } )
  console.log results

  new (Morris.Line)(
    element: 'test_result'
    parseTime: false
    data: results
    xkey: 'tp'
    ykeys: [ 'accuracy' ]
    labels: [ 'Accuracy' ])
