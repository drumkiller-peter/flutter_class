import 'package:drift/drift.dart';
import 'package:plant_app/data/db/type_converters/source_type_converter.dart';

class NewsTable extends Table {
  TextColumn get uuid => text()();
  TextColumn get source =>
      text().nullable().withDefault(const Constant("Hello World"))();
  TextColumn get author => text().nullable()();
  TextColumn get title => text().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get url => text().nullable()();
  TextColumn get urlToImage => text().nullable()();
  TextColumn get publishedAt => text().nullable()();
  TextColumn get content => text().nullable()();
  TextColumn get sourceModel => text().map(SourceTypeConverter()).nullable()();

  @override
  Set<Column> get primaryKey => {uuid, title, urlToImage};
}
