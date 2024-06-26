import 'package:drift/drift.dart';

class AuthTable extends Table {
  TextColumn get uuid => text().unique()();
  TextColumn get email => text().nullable()();
  DateTimeColumn get lastLogin => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {uuid};
}
