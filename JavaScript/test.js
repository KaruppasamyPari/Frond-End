// 1. declare a variable with let and const examples
// 2. difference between == and === with examples
// 3. how will you declare your control statements
// 4. do a program of calculator with arithmetic operator
// 5. difference between return keyword and function call with examples
// 6. differentiate onsubmit and onclick html events
// 7. validate a password length must be above 9 characters
// 8. syntax for for loop print "artificial " string
// 9. reverse a for loop from 50 to 1.
// 10. Give some examples for datatypes and how to function



// ANSWERS:

// 1. declare a variable with let and const examples
let age=21;
const pi=3.14;
console.log("Age:", age);
console.log("Value of Pi:", pi);

// 2. difference between == and === with examples
// == checks for value equality, while === checks for both value and type equality.
console.log(5 == '5'); 
console.log(5 === '5'); 
console.log(5 === 5); 

// 3. how will you declare your control statements
let score = 75;
if (score >= 50) {
    console.log("Passed");
} else {
    console.log("Failed");
}

// 4. do a program of calculator with arithmetic operator
function calculator(a, b, operator) {
    switch (operator) {
        case '+':
            return a + b;
        case '-':
            return a - b;
        case '*':
            return a * b;
        case '/':
            return a / b;
        default:
            return "Invalid operator";
    }
}

console.log("Addition:", calculator(10, 5, '+'));
console.log("Subtraction:", calculator(10, 5, '-'));
console.log("Multiplication:", calculator(10, 5, '*'));
console.log("Division:", calculator(10, 5, '/'));


// 5. difference between return keyword and function call with examples
// A function call invokes a function, while the return keyword exits a function and optionally returns a value.
function add(a, b) {
    return a + b; 
}
let sum = add(3, 4); 
console.log("Sum:", sum);


// 8. syntax for for loop print "artificial " string
for (let i = 0; i < 5; i++) {
    console.log("artificial");
}


// 9. reverse a for loop from 50 to 1.
for (let i = 50; i >= 1; i--) {
    console.log(i);
}


// 10. Give some examples for datatypes and how to function
let number = 42; // Number
let text = "Hello, World!"; // String
let isTrue = true; // Boolean
let list = [1, 2, 3]; // Array
let person = { name: "Alice", age: 30 }; // Object      
function showDataTypes() {
    console.log("Number:", typeof number);
    console.log("String:", typeof text);
    console.log("Boolean:", typeof isTrue);
    console.log("Array:", typeof list);
    console.log("Object:", typeof person);
}

showDataTypes();


