function checkAge(age) {
  try {
    if (age < 18) {
      throw new Error("Access denied: You must be at least 18 years old.");
    } else {
      console.log("Access granted.");
    }
  } catch (error) {
    console.error(error.message);
  }
}

checkAge(10);
