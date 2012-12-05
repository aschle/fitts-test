$(document).ready(function() {

  var configuration = [{"w": 10, "d": 100}, {"w": 10, "d": 50}, {"w": 30, "d": 100}, {"w": 5, "d": 20}];

  $("button[id^=test]").click(function() {
    var id = $(this).data("id");
    initTest(id-1);
  });

  function initTest(id) {

    var fullWidth = $("#sketch-container").width();
    var height = 200;

    var pjs = Processing.getInstanceById('sketch');

    pjs.size(fullWidth, height);
    $("#sketch-container").show();

    var width = (fullWidth * configuration[id]["w"]) / 100;
    var distance = ((fullWidth - width) * configuration[id]["d"]) / 100;

    // draw left rect
    var x = (fullWidth - distance - width) / 2;
    pjs.fill(255, 176, 0); // gelb
    pjs.rect(x, 0, width, height);

    // draw right rect
    pjs.fill(20, 56, 173); // blau
    pjs.rect(x + distance, 0, width, height);
  }
});