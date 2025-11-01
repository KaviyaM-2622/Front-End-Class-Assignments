function sumArray(numbers) {
  let sum = 0;

  for (let i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  return sum;
}
let nums = [10, 20, 30, 40];
console.log(sumArray(nums));
