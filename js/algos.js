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

function kVMAtch(obj1, obj2){
	for (var key in obj1){
		if(obj1[key] == obj2[key]){
			return true;
		}
	}
	return false;
}




//_______________________________________________________
//driver code to test function longestString here

console.log(longestStringHere(["this","may","be","it"]));
console.log(longestStringHere(["abc","defgh","be","i"]));
console.log(longestStringHere(["well","seeee","aboouuuuttt","it"]));