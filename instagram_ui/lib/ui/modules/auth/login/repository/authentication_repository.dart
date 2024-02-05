// ignore_for_file: public_member_api_docs, sort_constructors_first
// data leune ani bloc lai pass garne

import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationRepository {
  AuthenticationRepository() {
    _getSharedPrefInstance();
  }

  Future<void> _getSharedPrefInstance() async {
    preferences = await SharedPreferences.getInstance();
  }

  SharedPreferences? preferences;

  final String _email = "email";
  final String _password = "password";

  Future<bool> saveUserInfo(String email, String password) async {
    await preferences?.setString(_email, email);
    await preferences?.setString(_password, password);
    return true;
  }

  UserModel getUserInfo() {
    var email = preferences?.getString(_email);
    var password = preferences?.getString(_password);
    return UserModel(email: email ?? "", password: password ?? "");
  }
}

class UserModel {
  final String email;
  final String password;
  UserModel({
    required this.email,
    required this.password,
  });
}
