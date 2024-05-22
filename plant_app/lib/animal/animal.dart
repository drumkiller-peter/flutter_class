// ignore_for_file: public_member_api_docs, sort_constructors_first
class AnimalRepository {
  String name;

  AnimalRepository(this.name) {
    print("I am a constructor $name");
  }

  void getAnimals() {
    print("I am an animal $name");
  }

  void setAnimal(String animalNAme) {
    name = animalNAme;
  }
}

class NewAnimalClass {
  String name;
  NewAnimalClass({
    required this.name,
  }) {
    print("I am newAnimal Contructor $name");
  }

  void getAnimals() {
    print("I am an animal $name");
  }

  void setAnimal(String animalNAme) {
    name = animalNAme;
  }
}
