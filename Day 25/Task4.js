function validateForm() {
    try {
        let name = document.getElementById("name").value.trim();
        let email = document.getElementById("email").value.trim();

        if (name === "") {
            throw new Error("Name cannot be empty.");
        }

        if (!email.includes("@") || !email.includes(".")) {
            throw new Error("Please enter a valid email address.");
        }

        document.getElementById("message").innerHTML = "Form submitted successfully!";
    } 
    catch (error) {
        document.getElementById("message").innerHTML = "Error: " + error.message;
    } 
    finally {
        console.log("Validation process completed.");
    }
}

