setInterval(function () {
  location.reload();
}, 600000); // 600,000 = 10 นาที

document.getElementById("refresh-btn").addEventListener("click", function () {
  location.reload();
});

// $("#calendar").fullCalendar('removeEvents');
// $("#calendar").fullCalendar('addEventSource', nevent);
// $("#calendar").fullCalendar('rerenderEvents');