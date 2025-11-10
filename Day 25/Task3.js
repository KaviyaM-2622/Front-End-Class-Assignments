function checkNumber(num) {
  if (num < 0) {
    throw new Error("Number cannot be negative!");
  } else {
    console.log("Number is valid:", num);
  }
}
try {
  checkNumber(-5);
} catch (error) {
  console.log("Error caught:", error.message);
}
