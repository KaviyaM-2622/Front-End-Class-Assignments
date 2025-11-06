class Employee {
  constructor(name, salary) {
    this.name = name;
    this.salary = salary;
  }

  displayInfo() {
    console.log(`Employee Name: ${this.name}, Salary: ₹${this.salary}`);
  }
}

let emp1 = new Employee("Kaviya", 50000);

emp1.displayInfo();
