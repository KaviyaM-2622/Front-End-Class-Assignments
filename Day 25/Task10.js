function validateInput(name) {
  if (!name) {
    throw new Error("Invalid input! Name is required.");
  }
  return "Valid input: " + name;
}

let result;

try {
  console.log(validateInput("")); 
  result = "Success";
} catch (error) {
  console.log("Error name:", error.name);
  console.log("Error message:", error.message);
  result = "Failed";
} finally {
  console.log("Final result:", result);
}
