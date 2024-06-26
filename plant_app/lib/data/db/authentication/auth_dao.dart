import 'package:drift/drift.dart';
import 'package:plant_app/data/db/app_database.dart';
import 'package:plant_app/data/db/authentication/auth_table.dart';
import 'package:plant_app/models/auth/auth_db_mapper.dart';
import 'package:plant_app/models/auth/auth_model.dart';

part 'auth_dao.g.dart';

@DriftAccessor(tables: [AuthTable])
class AuthDao extends DatabaseAccessor<AppDatabase> with _$AuthDaoMixin {
  AuthDao(super.db);

  Future<void> saveUser(AuthTableCompanion authTableCompanion) async {
    await into(authTable).insert(authTableCompanion);
  }

  Future<AuthModel?> getUser() async {
    final res = await (select(authTable).getSingleOrNull());

    if (res != null) {
      return AuthDbMapper.fromDb(res);
    }
    return null;
  }
}
