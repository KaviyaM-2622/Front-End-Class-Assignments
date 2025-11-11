function fetchData(callback) {
  setTimeout(() => {
    callback("Data loaded!"); }, 1000);
}

function fetchDataPromise() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve("Data loaded!"); }, 1000);
  });
}

fetchDataPromise()
  .then(result => console.log(result))
  .catch(error => console.error(error));
