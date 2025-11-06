class Shape {
  constructor(name) {
    this.name = name;
  }

  display() {
    console.log(`Shape: ${this.name}`);
  }
}

class Circle extends Shape {
  constructor(radius) {
    super("Circle"); 
    this.radius = radius;
  }

  area() {
    return Math.PI * this.radius * this.radius;
  }
}

const circle1 = new Circle(5);
circle1.display();
console.log(`Area: ${circle1.area().toFixed(3)}`);
