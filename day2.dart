// void main() {
//   // sum(num1, num2);

//   minus("Subtraction", num2: 100, num3: 80, num1: 30);

//   getDetail(
//     10,
//     "someEmail@g.com",
//     "9803344499494949",
//   );
// }

// // Required positional parameters
// void sum(int num1, int num2) {
//   print(num1 + num2);
// }

// // Named Parameters
// minus(
//   String operation, {
//   int? num1,
//   required int num2,
//   int num3 = 40,
// }) {
//   print(num1 ?? 0 - num2 - num3);
// }

// // optional positional
// getDetail(int x, [String? email, String phoneNumber = "123"]) {
//   print("$x $email $phoneNumber");
// }

// void main() {
//   // var saurav = Person(12, "Saurav");
//   // var detail = saurav.getUserDetail(name: "Saurav", age: "12");

//   // var peter = Person(12, "Peter");
//   // var detail2 = peter.getUserDetail(name: null, age: "32");

//   // print(detail);
//   // print(detail2);
// }

// // constructor pani euta method ho

// class Person {
//   int age;
//   String name;

//   String? email;

//   void function(int a, int b) {
//     print(a + b);
//   }

//   String getUserDetail({String? name, required String age}) {
//     return "Name: ${this.name} Age: ${this.age}";
//   }

//   Person(this.age, this.name);

//   Person.useEmail(this.age, this.name, this.email) {
//     print("This is a named constructor");
//   }
// }



void main() {
  Animal an1 = Animal.useWeight(200);
  print(an1.weight);
  print(an1.age);
  print(an1.type);

  Animal an12 = Animal("Dog", 12, 12);
  print(an12.weight);
  print(an12.age);
  print(an12.type);
}


class Animal {
  String? type;
  int? age;
  int? weight;

  Animal(this.type, this.age, this.weight);

  useWeight(int giveMeWeightInKg) {
    this.weight = giveMeWeightInKg;
  }

  Animal.useWeight(int giveMeWeightInKg) {
    this.weight = giveMeWeightInKg;
  }
}

class Dog extends Animal {
  Dog(super.type, super.age, super.weight);

  someMEthod(){
    super.useWeight(2323);
  }

  @override
  useWeight(int giveMeWeightInKg) {
    
  }
}
