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


//_______________________________________________________
//driver code to test function longestString here

console.log(longestStringHere(["this","may","be","it"]));
console.log(longestStringHere(["abc","defgh","be","i"]));
console.log(longestStringHere(["well","seeee","aboouuuuttt","it"]));