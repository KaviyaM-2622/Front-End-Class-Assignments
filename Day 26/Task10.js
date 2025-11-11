function createCounter() {
  let count = 0; 

  function fakeAsyncWork(newCount) {
    return new Promise((resolve) => {
      setTimeout(() => {
        resolve(newCount); 
      }, 1000); 
    });
  }

  return {
    increment: function() {
      let newCount = count + 2;
      fakeAsyncWork(newCount).then((result) => {
        count = result;
        console.log("Counter updated:", count);
      });
    },
    getCount: function() {
      console.log("Current count:", count);
    }
  };
}
const counter = createCounter();

counter.getCount();   
counter.increment();    
counter.increment();   
