import 'class.dart';
void main() {
  final List<Animal> zoo = [
    Lion("Simba", 1.2),
    Elephant("Dumbo", 2.5),
    Parrot("Polly", 50),
  ];

  for (final animal in zoo) {
    print("Name: ${animal.getName()}");

    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize} m");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength} m");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabularySize} words");
    }

    animal.makeSound();
    print("------------------------");
  }
}