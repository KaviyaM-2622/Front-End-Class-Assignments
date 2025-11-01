function getGrade(marks) {
  if (marks >= 70) {
    return "A";
  } else if (marks >= 50) {
    return "B";
  } else {
    return "C";
  }
}

console.log(getGrade(77)); 
console.log(getGrade(63)); 
console.log(getGrade(40)); 
