// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VAccountModelImpl _$$VAccountModelImplFromJson(Map<String, dynamic> json) =>
    _$VAccountModelImpl(
      status: (json['status'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : VAccountData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VAccountModelImplToJson(_$VAccountModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$VAccountDataImpl _$$VAccountDataImplFromJson(Map<String, dynamic> json) =>
    _$VAccountDataImpl(
      puuid: json['puuid'] as String?,
      region: json['region'] as String?,
      name: json['name'] as String?,
      card: json['card'] == null
          ? null
          : VCardModel.fromJson(json['card'] as Map<String, dynamic>),
      tag: json['tag'] as String?,
      accountLevel: (json['account_level'] as num?)?.toInt(),
      lastUpdate: json['last_update'] as String?,
      lastUpdateRaw: (json['last_update_raw'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VAccountDataImplToJson(_$VAccountDataImpl instance) =>
    <String, dynamic>{
      'puuid': instance.puuid,
      'region': instance.region,
      'name': instance.name,
      'card': instance.card,
      'tag': instance.tag,
      'account_level': instance.accountLevel,
      'last_update': instance.lastUpdate,
      'last_update_raw': instance.lastUpdateRaw,
    };

_$VCardModelImpl _$$VCardModelImplFromJson(Map<String, dynamic> json) =>
    _$VCardModelImpl(
      small: json['small'] as String?,
      wide: json['wide'] as String?,
      large: json['large'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$VCardModelImplToJson(_$VCardModelImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'wide': instance.wide,
      'large': instance.large,
      'id': instance.id,
    };
