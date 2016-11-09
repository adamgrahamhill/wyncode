// console.log("I'm in a JS file!");
//
// // This is a single -line comment. Everything is ignored until the newline.
// var some_var;
//
// /*
//   This is a multi-line comment.
//   I can keep typing words until
//   I reach the final star-slash.
// */

// var some_other_var;

// var input;
// if (input) {
//   console.log(input);
// } else {
//   console.log("It's not defined.");
// }
//
// var test = false;
// var output = test ? "Passed the test" : "Failed the test";
// console.log(output);

// var value = 300;
// if (value === 0) {
//   console.log("zero");
// } else if (value ===1) {
//   console.log("one");
// } else {
//   console.log("or something else");
// }

// // var value = 0;
// switch (value) {
//   case 0:
//   console.log("0")
//   break;
//   default:
//   break;
// }


// var a = 0;
// while (true) {
//   console.log(a);
//   if (a >= 10) {
//     break;
//   } else {
//     a++;
//   }
// }

// for (var i = 0; i <= 10; i++) {
//   console.log(i);
// }

// var arr = ["a", "b", "c", "d"];

// arr.forEach(function(item) {
//   console.log(item);
// });
//
// function my_func_stmt(arg) {
//   console.log("inside my function");
//   console.log(arg);
// }
// //
// // my_func_stmt("test")
//
// var my_func_exp = function(arg) {
//   console.log("inside my function");
//   console.log(arg);
// }
//
// my_func_stmt("Hola");
// my_func_exp("Hola");
// console.log(typeOf(my_func_stmt));
// console.log(typeOf(my_func_exp));

// var one = function() {
//   return 1;
// }
//
// console.log(one());

// function addArgs() {
//   var sum = 0;
//   for (var i = 0; i < arguments.length; i++) {
//     sum += arguments[i];
//   }
//   return sum;
// }
//
// console.log(addArgs(3, 0.13, 0.01));
//
// function defaultArgs(a,b) {
//   if (typeof(a)=== "undefined") {
//     a = 0;
//   }
//   if (typeof(b) === "undefined") {
//     b = 0;
//   }
//   return a + b;
// }
//
// console.log(defaultArgs(3, 0.13, 0.01));

// function times(number, block) {
//   for (var i = 0; i < number; i++) {
//     // console.log(i);
//     block();
//   }
// }

// times(2);

// Monday JS Homework week 6 //
// Monday JS Homework week 6 //
// Monday JS Homework week 6 //

// var myName = "Adam Hill"
// console.log(myName);
// console.log("hello");
 // problem 2
 // problem 2
 // problem 2
 // problem 2
// puts "I am..."
// puts my_name.upcase
//
// journey = "We're going to October 21, 2015.. the FUTURE!!"
// puts journey.gsub "FUTURE", "PAST"

// console.log("I am...");
// console.log(myName.toUpperCase());
//
// var journey = "We're going to October 21, 2015.. the FUTURE!!"
// console.log(journey.replace("FUTURE", "PAST"));

// problem 3
// problem 3
// problem 3
// number_of_hoverboards = "1"
// puts "There are at least #{number_of_hoverboards}  hoverboard(s) in 2015."
// number_of_hoverboards = number_of_hoverboards.to_i
// number_of_hoverboards -= 1
//
// puts "There are at least #{number_of_hoverboards}  hoverboard(s) in 2015."

// var numberOfHoverboards = "1";
// console.log("There are at least " + numberOfHoverboards + " hoverboard(s) in 2015.");
// numberOfHoverboards -= 1;
//
// console.log("There are at least " + numberOfHoverboards + " hoverboard(s) in 2015.");

// Prob 4 Booleans and Control Flow
// Prob 4 Booleans and Control Flow
// Prob 4 Booleans and Control Flow

//ruby
// hoverboards = 0
//
// if hoverboards >= 100
//   puts "The future rocks!"
// elsif hoverboards < 100 and hoverboards > 1
//   puts "The future is pretty cool"
// elsif hoverboards == 1
//   puts "Meh"
// else
//   puts "The future is boring."
// end

//js
// var hoverboards = 0;
//
// if (hoverboards >= 100) {
//   console.log("The future rocks!");
// } if (hoverboards < 100 && hoverboards > 1) {
//   console.log("The future is pretty cool");
// } if (hoverboards === 1) {
//   console.log("Meh");
// } else {
//   console.log("The future is boring");
// }

// Prob 5 Looping
// puts "Let's Go!"
//
// 89.times do |speed|
//   puts "#{speed}mph!"
//   puts "ZOOOOOM" if speed == 88
// end

// console.log("Let's Go!");
//
// for (var i = 0; i < 89; i++) {
//   console.log( i + "mph!" );
//   if ( i === 88 ) {
//   console.log("ZOOOOOM");
//   }
// }

// Prob 6 Iterating over an array
// Prob 6 Iterating over an array
// Prob 6 Iterating over an array

// Ruby
// actors = ['Michael Fox', 'Christopher Lloyd', 'Lea Thompson', 'Claudia Wells']
//
// actors.each do |actor|
//   puts "#{actor} is so cool."
// end

//js
// var actors = ['Michael Fox', 'Christopher Lloyd', 'Lea Thompson', 'Claudia Wells']
//
// for ( var i = 0; i < actors.length; i++ ) {
//   console.log( actors[i] + " is so cool." );
// }

// Problem 7 Functions
// Problem 7 Functions
// Problem 7 Functions

//ruby

// def greeting_for(name)
//   "Hello, #{name}!"
// end
//
// puts greeting_for "Marty"

//js
// function greetingFor(name) {
//   return "Hello, " + name + "!";
// };
//
// console.log( greetingFor("Marty") );
//
// var arr = ["a", "b", "c", "d"];
// arr["x"] = "hello"
// // for (var i = 0; i < arr.length; i++) {
// //   console.log(arr[i];
// //   }
//
//   for ( var x in arr) {
//     console.log(x);
//   }

console.log(a_var === undefined);
var a_var = 123;
// console.log(func_var === undefined);

function a_function() {
  console.log(func_var === undefined);
  var func_var = "func";
}

a_function();
