// 1,Take three numbers as input and return the largest among them using if-else.
// 2,Write a program that takes a score (0–100) and returns a grade:
// 90-100: A
// 80-89: B
// 70-79: C
// 60-69: D
// Below 60: F
// 3,Print numbers from 1 to 50, but:
// If divisible by 3, print “Fizz”
// If divisible by 5, print “Buzz”
// If divisible by both, print “FizzBuzz”
// 4,Write a program that takes the color of a traffic light ("red", "yellow", "green") and returns what the driver should do.
// 5,Let the user guess a number and tell them if they are too high, too low, or correct. 
// 6,Take an input n and calculate the sum of the first n natural numbers.let the n value be 10
// 7,Take an input n and print its multiplication table up to 15.
// 8,Reverse a string using a for loop. name='remote'



let a = 20, b = 30, c = 15;
let x;
if (a >=b && a >= c) {
  x = a;
}
else if (b >= a && b >= c) {
  x = b;
}
else {
  x = c;
}
console.log("Largest number is", x);


let mark= 75;
let g;
if (mark >= 90){
    g = "A";
} 
else if (mark >= 80){
    g = "B";
}
else if (mark >= 70){
    g = "C";  
}  
else if (mark >= 60){
    g = "D";
} 
else {
    g = "F";
}
console.log("Grade is", g);



for (let i = 1; i <= 50; i++) {
    if (i  % 3 == 0 && i % 5 == 0) {
        console.log("FizzBuzz");
    } else if (i % 3 == 0) {
        console.log("Fizz");
    }
    else if (i % 5 == 0) {
        console.log("Buzz");
    } else {
        console.log(i);
    }
}

let color = "red"; 
if (color == "red") {
    console.log("Stop");
}
else if (color == "yellow") {
    console.log("Get Ready");
}   
else if (color == "green") {
    console.log("Go");
}
else {
    console.log("Invalid color");
}


let answer = 7;
let userGuess = 7;
if (userGuess > answer) {
    console.log("Too high!");
}   
else if (userGuess < answer) {
    console.log("Too low!");
}
else
{
    console.log("Correct!");
}


let n=5;
for(let i=1; i<=15; i++){
    console.log(i*n);
}


let s=0;
for(let i=1; i<=10; i++) s+=i; //s=s+i
console.log("Sum =", s); // 55


let name = "remote";
let rev = "";
for (let i = name.length-1; i >= 0; i--) {
    rev += name[i];
}   
console.log("Reversed string is", rev);

