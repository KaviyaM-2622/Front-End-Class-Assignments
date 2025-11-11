function createCounter() {
    let count = 0;
    function increase() {
        count = count + 1;
        console.log(count);
    }
    return increase;
}
const counter=createCounter();
counter();
counter();
counter();
counter();
counter();
