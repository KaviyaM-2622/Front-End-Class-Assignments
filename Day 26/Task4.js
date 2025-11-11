async function getData() {
  console.log("Fetching data...");

  let data = await new Promise((resolve) => {
    setTimeout(() => {
      resolve("Data fetched!");
    }, 2000);
  });

  console.log(data);
}

getData();
