class Student {
  constructor(name, grade) {
    this.name = name;
    this.grade = grade;
  }

  display() {
    console.log(`Name: ${this.name}, Grade: ${this.grade}`);
  }
}

const student1 = new Student("Kaviya", "A");
const student2 = new Student("Arun", "B");
const student3 = new Student("Priya", "C");

student1.display();
student2.display();
student3.display();
