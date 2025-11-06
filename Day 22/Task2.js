let book = {
  title: "Atomic Habits",
  author: "James Clear",
  pages: 320,

  describe: function() {
    console.log(`"${this.title}" by ${this.author} has ${this.pages} pages.`);
  }
};

book.describe();
