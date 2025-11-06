const user = {
  name: "Kaviya",
  isLoggedIn: false,

  login() {
    this.isLoggedIn = true;
    console.log(`${this.name} has logged in.`);
  },

  logout() {
    this.isLoggedIn = false;
    console.log(`${this.name} has logged out.`);
  }
};

user.login();   
user.logout();  
