// flow control statement
// break,continue the loop execution
// continue:pause the statement furthur stsatement
// will get executed


for(let i=0;i<=5;i++){
    if(i==3) continue;{
        console.log(i)
    }
}


for(let i=0;i<=5;i++){
    if(i==3) break;{
        console.log(i)
    }
}


// === value and datatype the value (strict equality operator)
// == only value (loose equality operator)

let x=10;
let y=10;
if(x===y){
    console.log('the value and datatype are same')
}
else{
    console.log('mismatch of both')  
}


let i = 0;
while(i<5) {
    console.log(i); // prints 0 to 4
    i++;
}



let n = 0;
do {
    console.log(n); // prints 0 to 4
    n++;
} while(n < 5);