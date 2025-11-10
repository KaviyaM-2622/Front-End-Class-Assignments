function validateForm() {
  try {
    let name = document.getElementById("name").value;
    let email = document.getElementById("email").value;

    if (!name || !email) {
      throw new Error("All fields must be filled!");
    }

    document.getElementById("message").innerHTML = "Form submitted successfully!";
  } 
  catch (error) {
    document.getElementById("message").innerHTML = "Error: " + error.message;
  } 
  finally {
    console.log("Validation completed.");
  }
}
