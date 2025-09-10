// switch statement :
// is an alternate code for if-else if else
// syntax switch statement is :
// varibale declaration
// switch(variable){
// {








let day='3';
switch (day){
    case '1':
        console.log('Monday')
        break;
    case '2':
        console.log('Tuesday')
        break;
    case '3':
        console.log('Wednesday')
        break;
    case '4':
        console.log('Thursday')
        break;
    case '5':
        console.log('Friday')
        break;
    case '6':
        console.log('Saturday')
        break;
    case '7':
        console.log('Sunday')
        break;
    default:
        console.log('Invalid day')
}



let grade='b';
switch (grade){
    case 'a':
        console.log('A++')
        break;
    case 'b':
        console.log('B++')
        break;
    case 'c':
        console.log('C++')
        break;
    case 'd':
        console.log('D++')
        break;
    default:
        console.log('Failed')
}



let days='wednesday';
let message;
switch (days){
    case 'monday':
        message='Start of the week'
        break;
    case 'tuesday':
        message='Second day of the week'
        break;
    case 'wednesday':
        message='Midweek day'
        break;
    case 'thursday':
        message='Almost weekend'
        break;
    case 'friday':
        message='Last day of the work week'
        break;
    default:
        message='Weekend!'   
}
console.log(message)





// let no: 123;
// if(condition)


// While loop
// a while loop means the contition is initially eveluated before the each iteration of the loop its may execute till infirmed until the condition is false

let no=12;
while(no>26){
    console.log(no);
    no++;
}