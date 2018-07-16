$(document).ready(function() {
  $("#open_tasks").click(function() {
      show_only_open_tasks();
  });
});

function show_only_open_tasks() {
  $(".task_open:not(:contains(Open))").parent().toggle()
}