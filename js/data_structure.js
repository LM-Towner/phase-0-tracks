//declaring arrays for colors and names of horses
var colors = ["Ginger", "Key Lime", "Kiwi", "Mauve"];
var horseNames =["Bubbles", "Maximus", "Xero", "Mantis"];

// 'pushing' the names of  more colors and horses arrays
colors.push("Milk");
horseNames.push("Green Hornet");

//testing to make sure that colors and horse names were added
console.log(colors);
console.log(horseNames);


//Assigning colors and names to the horses 
var horses = {}
for(var i = 0; i < horseNames.length; i++){
	horses[horseNames[i]] = colors[i];
}
console.log(horses)

function Car(color, model, numOfDoors){
 this.color = color;
 this.model = model;
 this.numOfDoors = numOfDoors;
 this.isCool = false;

 this.buy = function(){
  this.isCool = true;
  console.log("You bought it?");
 }
}

// CREATING SOME CARS

var myCar = new Car('yellow','mustang', 2);
var yourCar = new Car('pink','chevy',4);
var ourCar = new Car('orange', 'dodge', 2);

console.log("The "+myCar.color+' '+myCar.model+ 'is  cool car?');
console.log(myCar.isCool);
myCar.buy();
console.log("The "+yourCar.color+' '+yourCar.model+' is cool too??');
console.log("Oh yes! It's " +myCar.isCool+"!");