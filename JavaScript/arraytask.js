
    // let cur_list = ['demo', false, 'content', 45, 99, 2.5, true, '45', 'task', 'false',114,45];
    // 1. Remove duplicate values 
    // 2. Append the values in the index position 3.
    // 3. Remove the element value at the end. 
    // 4. Add the values in between [3-5]: color, green, blue 
    // 5. Add the value at the beginning of the list: 2954.
    // 6. Concat two array lists 
    // 7. Add new object values and print object values with nested array 


let original_list = ['demo', false, 'content', 45, 99, 2.5, true, '45', 'task', 'false', 114, 45];

// 1. Remove duplicates
let q1_list = [...new Set(original_list)];
console.log("1. Remove duplicates:", q1_list);

// 2. Append value at index 3
let q2_list = [...q1_list]; 
q2_list.splice(3, 0, "new_value");
console.log("2. Append at index 3:", q2_list);

// 3. Remove last element
let q3_list = [...q2_list];
q3_list.pop();
console.log("3. Remove last element:", q3_list);

// 4. Add values between 3-5
let q4_list = [...q3_list];
q4_list.splice(3, 0, "color", "green", "blue");
console.log("4. Add between 3-5:", q4_list);

// 5. Add value at beginning
let q5_list = [...q4_list];
q5_list.unshift(2593);
console.log("5. Add at beginning:", q5_list);

// 6. Concat two arrays

let another_list = [1, 2, 3];
let q6_list = q5_list.concat(another_list);
console.log("6. Concatenated List:", q6_list);

// 7. Add new object and print nested array
let obj = {
    name: "SampleObject",
    values: q6_list,
    extra: {
        category: "Test",
        numbers: [10, 20, 30]
    }
};
console.log("7. Object:", obj);
console.log("Nested Array:", obj.extra.numbers);

