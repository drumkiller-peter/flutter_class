// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'random_class.g.dart';

@JsonSerializable()
class SomeRandomClass {
  final String name;
  final String id;

  SomeRandomClass({
    required this.name,
    required this.id,
  });

  factory SomeRandomClass.fromJson(Map<String, dynamic> json) =>
      _$SomeRandomClassFromJson(json);

  Map<String, dynamic> toJson() => _$SomeRandomClassToJson(this);
}
