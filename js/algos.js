// Release 0: Find the longest string

var string = ""
function longestStringHere(findString){
  for (var p = 0; p < findString.length; p++){
    if(findString[p].length > string.length){
      string = findString[p];
    }
  }
  console.log("This is the longest String:   ");
  return string;
}

// Release 1 : Find a key-value match pair

function kVMatch(obj1, obj2){
	for (var key in obj1){
		if(obj1[key] == obj2[key]){
			return true;
		}
	}
	return false;
}

/*______________________________________________________
	driver code to test function longestString here
________________________________________________________*/
console.log(longestStringHere(["this","may","be","it"]));
console.log(longestStringHere(["abc","defgh","be","i"]));
console.log(longestStringHere(["well","seeee","aboouuuuttt","it"]));

/*______________________________________________________
	driver code to test function for match key function
________________________________________________________*/

var obj1 = {name: "Steven",  age: 54};
var obj2 = {name: "Tamir",   age: 54};
var obj3 = {name: "Jocelyn", age: 1};
var obj4 = {name: "Kim",     age: 2};
var obj5 = {name: "John",    age: 26};
var obj6 = {name: "John",    age: 25};
console.log(kVMatch(obj1, obj2)); 
console.log(kVMatch(obj1, obj3)); 
console.log(kVMatch(obj2, obj4)); 
console.log(kVMatch(obj3, obj4));
console.log(kVMatch(obj6, obj5));



