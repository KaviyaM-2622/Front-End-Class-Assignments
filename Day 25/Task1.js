try {
    console.log(x);
}catch(error) {
    if(error instanceof ReferenceError) {
        console.log("A ReferenceError occurred:", error.message);
    }else {
        console.log("Some other error occurred:", error)
    }
}