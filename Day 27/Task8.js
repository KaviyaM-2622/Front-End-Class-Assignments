const input = document.getElementById('username');
const button = document.getElementById('fetchBtn');
const errorElement = document.getElementById('error');
const followersContainer = document.getElementById('followers');

button.addEventListener('click', async () => {
  const username = input.value.trim();
  errorElement.textContent = '';
  followersContainer.innerHTML = '';

  if (!username) {
    errorElement.textContent = 'Please enter a valid GitHub username.';
    return;
  }

  try {
    const response = await fetch(`https://api.github.com/users/${username}/followers`);

    if (!response.ok) {
      if (response.status === 404) {
        throw new Error('User not found. Please check the username and try again.');
      } else {
        throw new Error('Failed to fetch data. Please try again later.');
      }
    }

    const followers = await response.json();

    if (followers.length === 0) {
      followersContainer.innerHTML = `<p>${username} has no followers.</p>`;
      return;
    }

    followersContainer.innerHTML = `<h3>Followers of ${username}:</h3>`;
    followers.forEach(follower => {
      const div = document.createElement('div');
      div.innerHTML = `
        <img src="${follower.avatar_url}" width="50" height="50" style="border-radius:50%">
        <a href="${follower.html_url}" target="_blank">${follower.login}</a>
      `;
      followersContainer.appendChild(div);
    });

  } catch (error) {
    errorElement.textContent = error.message;
  }
});
