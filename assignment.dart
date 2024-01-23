class User {
  String uid;
  String name;

  User(this.uid, this.name);
}

class Contact {
  String cid;
  String phoneNumber;

  Contact(this.cid, this.phoneNumber);
}

void main() {
  List<User> users = [
    User("1", "John"),
    User("2", "Jane"),
    User("3", "Alice"),
  ];

  List<Contact> contacts = [
    Contact("12", "1111111111"),
    Contact("2", "2222222222"),
    Contact("3", "3333333333"),
  ];

  Map<String, String> contactMap = {};

  for (Contact contact in contacts) {
    contactMap[contact.cid] = contact.phoneNumber;
  }

  for (User user in users) {
    String userPhoneNumber = contactMap[user.uid] ?? "No contact found";
    print("${user.name}: $userPhoneNumber");
  }
}
