function doTask(callback) {
    console.log("Task started...");
    setTimeout(callback, 3000);
}
function done() {
    console.log("Task Completed...");
    
}
doTask(done);
    
