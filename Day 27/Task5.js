fetch("https://jsonplaceholder.typicode.com/posts")
  .then(response => response.json())
  .then(data => {
    data.slice(0, 5).forEach(post => {
      console.log(post.title);
    });
  })
  .catch(error => console.error("Error fetching data:", error));
