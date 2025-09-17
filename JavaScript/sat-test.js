// 1,Take three numbers as input and return the largest among them using if-else.

let a = 10, b = 25, c = 15;
let largest;
if (a >= b && a >= c) {
  largest = a;
} else if (b >= a && b >= c) {
  largest = b;
} else {
  largest = c;
}
console.log("Largest:", largest);


// 2,Write a program that takes a score (0–100) and returns a grade: 
// 90-100: A 
// 80-89: B 
// 70-79: C 
// 60-69: D 
// Below 60: F

let score = 85;
let grade;
if (score >= 90) grade = "A";
else if (score >= 80) grade = "B";
else if (score >= 70) grade = "C";
else if (score >= 60) grade = "D";
else grade = "F";
console.log("Grade:", grade);

// 3,Print numbers from 1 to 50, but: 
// If divisible by 3, print “Fizz” 
// If divisible by 5, print “Buzz” 
// If divisible by both, print “FizzBuzz”

for (let i = 1; i <= 50; i++) {
  if (i % 3 === 0 && i % 5 === 0) console.log("FizzBuzz");
  else if (i % 3 === 0) console.log("Fizz");
  else if (i % 5 === 0) console.log("Buzz");
  else console.log(i);
}

// 4,Write a program that takes the color of a traffic light ("red", "yellow", "green") and 
// returns what the driver should do.

let light = "red"; // change to "yellow" or "green"
if (light === "red") console.log("Stop");
else if (light === "yellow") console.log("Get Ready");
else if (light === "green") console.log("Go");
else console.log("Invalid color");


// 5,Let the user guess a number and tell them if they are too high, too low, or correct.

let secret = 7;
let guess = 9; // user guess
if (guess > secret) console.log("Too high!");
else if (guess < secret) console.log("Too low!");
else console.log("Correct!");


// 6,Take an input n and calculate the sum of the first n natural numbers.let the n value be 10 


let n = 10, sum = 0;
for (let i = 1; i <= n; i++) sum += i;
console.log("Sum =", sum); // 55



// 7,Take an input n and print its multiplication table up to 15. 

let num = 5; // any number
for (let i = 1; i <= 15; i++) {
  console.log(`${num} x ${i} = ${num * i}`);
}


// 8,Reverse a string using a for loop. name='remote'

let name = "remote";
let reversed = "";
for (let i = name.length - 1; i >= 0; i--) {
  reversed += name[i];
}
console.log("Reversed:", reversed); // etomer
