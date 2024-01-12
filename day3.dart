class User {
  String name;
  String email;

  String? _phone;

  String getPhoneNumber() {
    return _phone!;
  }

  void setPhoneNumber(String phone) {
    _phone = phone;
  }

  User(this.name, this.email);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['name'], json['email']);
  }
}

void main() {
  User u1 = User("Ram", "ram@g.com");
  print("Name: ${u1.name} Email: ${u1.email} ");

  Map<String, dynamic> jsonData = {
    'name': "Shyam",
    "email": "Shyam@g.com",
  };

  var u2 = User.fromJson(jsonData);
  print("Name: ${u2.name} Email: ${u2.email} ");
}

class Admin extends User {
  Admin(super.name, super.email);
}

class SomeOuterClass {
  someFunction() {
    User u1 = User("name", "email");
    u1._phone = "1234567890";
  }
}
