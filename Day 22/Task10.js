class Student {
  constructor(name, grade) {
    this.name = name;
    this.grade = grade;
  }

  display() {
    console.log(`Name: ${this.name}, Grade: ${this.grade}`);
  }
}

Student.prototype.greet = function() {
  console.log(`Hello, ${this.name}! Keep up the good work.`);
};

const student1 = new Student("Kaviya", "A");
const student2 = new Student("Divya", "B");

student1.display();
student1.greet();

student2.display();
student2.greet();
