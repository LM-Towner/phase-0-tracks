/*
		 Psuedocode for a reverse method for JavaScript
-> Create a method that will take a string
-> For each letter within the string of the program will read and manipulate them seperately
-> Once each character within the string is seperated, the program will store the string as seperated characters as a new string
-> The program will identify how long the strin is and identify which character is the terminal one
-> Once identifyed the length as well as how many characters are within the string,the program will now take the last character and make it first
-> The program will now do this until the first character is now the last character
-> After all the characters changes their position within the string, the console will now print the modified string.

*/

function reverse(string){
	var new_string = "";
	for(var i = string.length -1; i >=0; i --){
		new_string = new_string + string[i]
	}
	return new_string
}

console.log(reverse("hello"));
