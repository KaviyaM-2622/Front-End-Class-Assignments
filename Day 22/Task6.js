class Product {
  constructor(name, price) {
    this.name = name;
    this.price = price;
  }

  discountedPrice(discountPercent) {
    let discount = (this.price * discountPercent) / 100;
    return this.price - discount;
  }
}
const product1 = new Product("Laptop", 100000);
console.log(`Original Price: ₹${product1.price}`);
console.log(`Price after 15% discount: ₹${product1.discountedPrice(15)}`);
