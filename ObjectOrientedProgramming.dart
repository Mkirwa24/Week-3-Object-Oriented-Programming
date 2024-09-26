// Abstract class to define a blueprint for all animals
abstract class Animal {
  // Abstract method for making a sound
  void sound(); 
}

// Superclass representing a Mammal
class Mammal {
  // Private variable to store the name of the mammal
  String _name; 

  // Constructor to initialize the name
  Mammal(this._name);

  // Getter method to access the private name variable
  String getName() {
    return _name; // Controlled access to the name
  }
}

// Subclass representing a Dog that inherits from Mammal and implements Animal
class Dog extends Mammal implements Animal {
  // Constructor to initialize the dog's name
  Dog(String name) : super(name);

  // Overriding the sound method to provide dog-specific behavior
  @override
  void sound() {
    print('${getName()} says: Woof!'); // Dog sound
  }
}

// Subclass representing a Cat that inherits from Mammal and implements Animal
class Cat extends Mammal implements Animal {
  // Constructor to initialize the cat's name
  Cat(String name) : super(name);

  // Overriding the sound method to provide cat-specific behavior
  @override
  void sound() {
    print('${getName()} says: Meow!'); // Cat sound
  }
}

void main() {
  // Creating objects of subclasses Dog and Cat
  Animal dog = Dog('Simba');
  Animal cat = Cat('Whiskers');

  // Demonstrating polymorphism through method overriding
  dog.sound(); 
  cat.sound(); 
}