// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String?,
      price: json['price'] as String,
      category: json['type'] as String? ?? 'Tops',
      categoryModel: json['categoryModel'] == null
          ? null
          : CategoryModel.fromJson(
              json['categoryModel'] as Map<String, dynamic>),
      nayaKura: json['nayaKura'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'price': instance.price,
      'type': instance.category,
      'categoryModel': instance.categoryModel,
      'nayaKura': instance.nayaKura,
    };

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
