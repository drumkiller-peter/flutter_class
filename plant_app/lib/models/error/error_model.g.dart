// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorModelImpl _$$ErrorModelImplFromJson(Map<String, dynamic> json) =>
    _$ErrorModelImpl(
      status: (json['status'] as num?)?.toInt(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ErrorModelImplToJson(_$ErrorModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errors': instance.errors,
    };

_$ErrorDataImpl _$$ErrorDataImplFromJson(Map<String, dynamic> json) =>
    _$ErrorDataImpl(
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      details: json['details'] as String?,
    );

Map<String, dynamic> _$$ErrorDataImplToJson(_$ErrorDataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'details': instance.details,
    };
