function Dog (name) {  //dog class initialize method
  this.name = name; //this like @ in this situation
}

Dog.prototype.bark = function() {  //add methods w/PT chain
  console.log("Bow wow!")
}

Dog.prototype.speak = function(message) {
  console.log(this.name + ' says: ' + message);
}

function StBernard() {
  Dog.call(this, "Beethoven");
}

StBernard.prototype = new Dog();
StBernard.prototype.constructor = Dog;
