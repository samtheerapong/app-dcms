// Refresh the page every 30 seconds
setInterval(function () {
  location.reload();
}, 60000);

// Handle click event for the refresh button
document.getElementById("refresh-btn").addEventListener("click", function () {
  location.reload();
});
