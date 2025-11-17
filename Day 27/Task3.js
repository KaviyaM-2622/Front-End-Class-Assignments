async function fetchGitHubData() {
  try {
    const response = await fetch("https://api.github.com/users/KaviyaM-2622");

    if (!response.ok) {
      throw new Error("Failed to fetch data. Status: " + response.status);
    }

    const data = await response.json();
    console.log("Login:", data.login);
    console.log("Public Repos:", data.public_repos);
  } catch (error) {
    console.error("Error:", error.message);
  }
}

fetchGitHubData();

