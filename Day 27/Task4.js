fetch("https://api.github.com/users/user_does_not_exist_123")
  .then(response => {
    if (!response.ok) {
      throw new Error("User not found!");
    }
    return response.json();
  })
  .then(data => console.log(data))
  .catch(error => console.log("Error:", error.message));
