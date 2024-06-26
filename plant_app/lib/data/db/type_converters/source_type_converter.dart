import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:plant_app/models/news/news_model.dart';

class SourceTypeConverter extends TypeConverter<SourceModel, String> {
  @override
  SourceModel fromSql(String fromDb) {
    return SourceModel.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(SourceModel value) {
    return jsonEncode(value.toJson());
  }
}
