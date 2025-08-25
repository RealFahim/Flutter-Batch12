// Abstract Class Animal
abstract class Animal {
  String _name;

  Animal(this._name);

  void makeSound();

  String getName() => _name;
}

// Lion
class Lion extends Animal {
  late double _maneSize;

  Lion(String name, double maneSize) : super(name) {
    this.maneSize = maneSize;
  }

  double get maneSize => _maneSize;

  set maneSize(double value) {
    if (value > 0) {
      _maneSize = value;
    } else {
      print("❌ Mane size must be > 0");
    }
  }

  @override
  void makeSound() {
    print("${getName()} roars!");
  }
}

// Elephant
class Elephant extends Animal {
  late double _trunkLength;

  Elephant(String name, double trunkLength) : super(name) {
    this.trunkLength = trunkLength;
  }

  double get trunkLength => _trunkLength;

  set trunkLength(double value) {
    if (value > 0) {
      _trunkLength = value;
    } else {
      print(" Trunk length must be > 0");
    }
  }

  @override
  void makeSound() {
    print("${getName()} trumpets! 🐘");
  }
}

// Parrot
class Parrot extends Animal {
  late int _vocabularySize;

  Parrot(String name, int vocabularySize) : super(name) {
    this.vocabularySize = vocabularySize;
  }

  int get vocabularySize => _vocabularySize;

  set vocabularySize(int value) {
    if (value >= 0) {
      _vocabularySize = value;
    } else {
      print(" Vocabulary size cannot be negative");
    }
  }

  @override
  void makeSound() {
    print("${getName()} says 'Hello!' ");
  }
}


