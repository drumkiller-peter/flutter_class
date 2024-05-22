// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_model.g.dart';

@JsonSerializable()
class EventModel extends Equatable {
  final String name;
  final String id;
  final String description;
  final DateTime date;
  final String? imageUrl;

  const EventModel({
    required this.name,
    required this.id,
    required this.description,
    required this.date,
    this.imageUrl,
  });

  @override
  List<Object?> get props => [name, description, date, id, imageUrl];

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);

  EventModel copyWith({
    String? name,
    String? id,
    String? description,
    DateTime? date,
    String? imageUrl,
  }) {
    return EventModel(
      name: name ?? this.name,
      id: id ?? this.id,
      description: description ?? this.description,
      date: date ?? this.date,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

}
