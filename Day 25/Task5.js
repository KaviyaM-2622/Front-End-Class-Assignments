function checkNumber(num) {
  if (num > 100) {
    throw "Number is large!";
  } else {
    console.log("Number is valid:", num);
  }
}

try {
  checkNumber(105);
} catch (error) {
  console.log("Error:", error);
}
