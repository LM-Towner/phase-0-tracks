console.log("The script is running");

var photo = document.getElementById('running');
photo.style.border = "3px solid black";
photo.style.cssFloat = "center";
//photo.style.wordWrap = "right";
photo.style.paddingTop = "30px";
photo.style.paddingBottom = "30px";
photo.style.paddingLeft= "30px";
photo.style.paddingRight = "30px";


//This is my Dog Spot

var texts = document.getElementsByTagName('h1');
var text = texts[0];
//choosing the first element in case there are multiple h1 elements
text.style.fontSize = "56px";
text.style.color = "blue";
text.style.cssFloat = "center"


var texts1 = document.getElementsByTagName('h1');
var text1 = texts1[1];
//choosing the second element in case there are multiple h1 elements
text1.style.fontSize = "56px";
text1.style.color = "gray";
text1.style.cssFloat = "left"
text1.style.paddingTop = "30px";
text1.style.paddingBottom = "30px";
text1.style.paddingLeft= "30px";
text1.style.paddingRight = "30px";


var paragraph = document.getElementById('p1');
paragraph.style.fontSize = "30px";
paragraph.style.border = "2px dashed green"
paragraph.style.color = "pink";


var photo2 = document.getElementById('water'); 	
photo2.style.backgroundColor = "red"; 	
photo2.style.border = "10px solid red"; 
photo2.style.cssFloat = "center";
//photo2.addEventListener("click", addGreenBorder); 

function addGreenBorder(event) {
	console.log(event);
	event.target.style.border = "10px dashed green";
}

var photo = document.getElementById('running');
photo.addEventListener("click", addGreenBorder);

function colorChange(event){
	console.log(event);
	event.target.style.border= "30px solid blue";
}


var photo2 = document.getElementById('water');
photo2.addEventListener("click", colorChange);
