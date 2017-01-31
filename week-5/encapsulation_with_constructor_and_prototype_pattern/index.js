// As a shepherd
// So my sheep can be safe
// I want to have a pen they can go into
function Pen() {
  this._sheep = [];
};

// As a shepherd
// So my sheep can be friends
// I want them to be able to say their names
Pen.prototype.name = function() {
  return this._sheep;
};

// As a shepherd
// So I can know all my sheep are home
// I want to get a list of all the names of the sheep in the pen
Pen.prototype.set = function(sheep) {
  this._sheep.push(sheep);
};

var pen = new Pen();
pen.set("Dolly");
pen.set("Bob");
console.log("Safe sheep are", pen.name());
