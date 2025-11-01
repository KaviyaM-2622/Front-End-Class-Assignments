function getUserName(callback) {
  let name = "Kaviya"; 
  callback(name); 
}

function greetUser(name) {
  console.log("Hello, " + name + "! Welcome!");
}

getUserName(greetUser);
