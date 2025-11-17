fetch("https://api.github.com/users/KaviyaM-2622") 
  .then(response => {
    if (!response.ok) {
      throw new Error("Network response was not ok " + response.status);
    }
    return response.json();
  })
  .then(data => {
    console.log("GitHub Profile Data:", data);
  })
  .catch(error => {
    console.error("Error fetching GitHub data:", error);
  });
