class Employee {
  constructor(name, salary) {
    this.name = name;
    this.salary = salary;
  }

  displayInfo() {
    console.log(`Name: ${this.name}, Salary: ₹${this.salary}`);
  }
}

class Manager extends Employee {
  constructor(name, salary, department) {
    super(name, salary);
    this.department = department;
  }

  displayInfo() {
    console.log(`Name: ${this.name}, Salary: ₹${this.salary}, Department: ${this.department}`);
  }
}

let manager1 = new Manager("Kaviya", 80000, "HR");
manager1.displayInfo();
