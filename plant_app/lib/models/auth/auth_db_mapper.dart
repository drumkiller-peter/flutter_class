import 'package:drift/drift.dart';
import 'package:plant_app/data/db/app_database.dart';
import 'package:plant_app/models/auth/auth_model.dart';

class AuthDbMapper {
  AuthDbMapper._();

  static AuthModel fromDb(AuthTableData json) {
    return AuthModel(
      uuid: json.uuid,
      email: json.email,
      lastLogin: json.lastLogin,
    );
  }

  static AuthTableCompanion toDb(AuthModel authModel) {
    return AuthTableCompanion(
      email: Value(authModel.email),
      uuid: Value(authModel.uuid),
      lastLogin: Value(authModel.lastLogin),
    );
  }
}
