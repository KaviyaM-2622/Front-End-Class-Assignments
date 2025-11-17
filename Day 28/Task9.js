function getNumbers() {
  const num1 = document.getElementById("num1").value;
  const num2 = document.getElementById("num2").value;
  return { num1, num2 };
}

function checkEmpty(num1, num2) {
  if (num1 === "" || num2 === "") {
    alert("Please enter both numbers");
    return false; 
  }
  return true;
}

function add(num1, num2) {
  return Number(num1) + Number(num2);
}

function display(result) {
  document.getElementById("result").textContent = "Result: " + result;
}

document.getElementById("addBtn").addEventListener("click", () => {
  const { num1, num2 } = getNumbers();

  if (!checkEmpty(num1, num2)) return;

  const result = add(num1, num2);
  display(result);
});
