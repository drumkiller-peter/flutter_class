// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      name: json['name'] as String,
      id: json['id'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'imageUrl': instance.imageUrl,
    };
