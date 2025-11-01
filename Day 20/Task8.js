function doTask(callback) {

  callback();
}
function showMessage() {
  console.log("Task Complete");
}

doTask(showMessage);
