// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VAccountModel _$VAccountModelFromJson(Map<String, dynamic> json) {
  return _VAccountModel.fromJson(json);
}

/// @nodoc
mixin _$VAccountModel {
  int? get status => throw _privateConstructorUsedError;
  VAccountData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VAccountModelCopyWith<VAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VAccountModelCopyWith<$Res> {
  factory $VAccountModelCopyWith(
          VAccountModel value, $Res Function(VAccountModel) then) =
      _$VAccountModelCopyWithImpl<$Res, VAccountModel>;
  @useResult
  $Res call({int? status, VAccountData? data});

  $VAccountDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VAccountModelCopyWithImpl<$Res, $Val extends VAccountModel>
    implements $VAccountModelCopyWith<$Res> {
  _$VAccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VAccountData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VAccountDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VAccountDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VAccountModelImplCopyWith<$Res>
    implements $VAccountModelCopyWith<$Res> {
  factory _$$VAccountModelImplCopyWith(
          _$VAccountModelImpl value, $Res Function(_$VAccountModelImpl) then) =
      __$$VAccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, VAccountData? data});

  @override
  $VAccountDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VAccountModelImplCopyWithImpl<$Res>
    extends _$VAccountModelCopyWithImpl<$Res, _$VAccountModelImpl>
    implements _$$VAccountModelImplCopyWith<$Res> {
  __$$VAccountModelImplCopyWithImpl(
      _$VAccountModelImpl _value, $Res Function(_$VAccountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VAccountModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VAccountData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VAccountModelImpl implements _VAccountModel {
  const _$VAccountModelImpl({this.status, this.data});

  factory _$VAccountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VAccountModelImplFromJson(json);

  @override
  final int? status;
  @override
  final VAccountData? data;

  @override
  String toString() {
    return 'VAccountModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VAccountModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VAccountModelImplCopyWith<_$VAccountModelImpl> get copyWith =>
      __$$VAccountModelImplCopyWithImpl<_$VAccountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VAccountModelImplToJson(
      this,
    );
  }
}

abstract class _VAccountModel implements VAccountModel {
  const factory _VAccountModel({final int? status, final VAccountData? data}) =
      _$VAccountModelImpl;

  factory _VAccountModel.fromJson(Map<String, dynamic> json) =
      _$VAccountModelImpl.fromJson;

  @override
  int? get status;
  @override
  VAccountData? get data;
  @override
  @JsonKey(ignore: true)
  _$$VAccountModelImplCopyWith<_$VAccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VAccountData _$VAccountDataFromJson(Map<String, dynamic> json) {
  return _VAccountData.fromJson(json);
}

/// @nodoc
mixin _$VAccountData {
  String? get puuid => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  VCardModel? get card => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  @JsonKey(name: "account_level")
  int? get accountLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "last_update")
  String? get lastUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "last_update_raw")
  int? get lastUpdateRaw => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VAccountDataCopyWith<VAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VAccountDataCopyWith<$Res> {
  factory $VAccountDataCopyWith(
          VAccountData value, $Res Function(VAccountData) then) =
      _$VAccountDataCopyWithImpl<$Res, VAccountData>;
  @useResult
  $Res call(
      {String? puuid,
      String? region,
      String? name,
      VCardModel? card,
      String? tag,
      @JsonKey(name: "account_level") int? accountLevel,
      @JsonKey(name: "last_update") String? lastUpdate,
      @JsonKey(name: "last_update_raw") int? lastUpdateRaw});

  $VCardModelCopyWith<$Res>? get card;
}

/// @nodoc
class _$VAccountDataCopyWithImpl<$Res, $Val extends VAccountData>
    implements $VAccountDataCopyWith<$Res> {
  _$VAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? puuid = freezed,
    Object? region = freezed,
    Object? name = freezed,
    Object? card = freezed,
    Object? tag = freezed,
    Object? accountLevel = freezed,
    Object? lastUpdate = freezed,
    Object? lastUpdateRaw = freezed,
  }) {
    return _then(_value.copyWith(
      puuid: freezed == puuid
          ? _value.puuid
          : puuid // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as VCardModel?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      accountLevel: freezed == accountLevel
          ? _value.accountLevel
          : accountLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdateRaw: freezed == lastUpdateRaw
          ? _value.lastUpdateRaw
          : lastUpdateRaw // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VCardModelCopyWith<$Res>? get card {
    if (_value.card == null) {
      return null;
    }

    return $VCardModelCopyWith<$Res>(_value.card!, (value) {
      return _then(_value.copyWith(card: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VAccountDataImplCopyWith<$Res>
    implements $VAccountDataCopyWith<$Res> {
  factory _$$VAccountDataImplCopyWith(
          _$VAccountDataImpl value, $Res Function(_$VAccountDataImpl) then) =
      __$$VAccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? puuid,
      String? region,
      String? name,
      VCardModel? card,
      String? tag,
      @JsonKey(name: "account_level") int? accountLevel,
      @JsonKey(name: "last_update") String? lastUpdate,
      @JsonKey(name: "last_update_raw") int? lastUpdateRaw});

  @override
  $VCardModelCopyWith<$Res>? get card;
}

/// @nodoc
class __$$VAccountDataImplCopyWithImpl<$Res>
    extends _$VAccountDataCopyWithImpl<$Res, _$VAccountDataImpl>
    implements _$$VAccountDataImplCopyWith<$Res> {
  __$$VAccountDataImplCopyWithImpl(
      _$VAccountDataImpl _value, $Res Function(_$VAccountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? puuid = freezed,
    Object? region = freezed,
    Object? name = freezed,
    Object? card = freezed,
    Object? tag = freezed,
    Object? accountLevel = freezed,
    Object? lastUpdate = freezed,
    Object? lastUpdateRaw = freezed,
  }) {
    return _then(_$VAccountDataImpl(
      puuid: freezed == puuid
          ? _value.puuid
          : puuid // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as VCardModel?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      accountLevel: freezed == accountLevel
          ? _value.accountLevel
          : accountLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdateRaw: freezed == lastUpdateRaw
          ? _value.lastUpdateRaw
          : lastUpdateRaw // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VAccountDataImpl implements _VAccountData {
  const _$VAccountDataImpl(
      {this.puuid,
      this.region,
      this.name,
      this.card,
      this.tag,
      @JsonKey(name: "account_level") this.accountLevel,
      @JsonKey(name: "last_update") this.lastUpdate,
      @JsonKey(name: "last_update_raw") this.lastUpdateRaw});

  factory _$VAccountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VAccountDataImplFromJson(json);

  @override
  final String? puuid;
  @override
  final String? region;
  @override
  final String? name;
  @override
  final VCardModel? card;
  @override
  final String? tag;
  @override
  @JsonKey(name: "account_level")
  final int? accountLevel;
  @override
  @JsonKey(name: "last_update")
  final String? lastUpdate;
  @override
  @JsonKey(name: "last_update_raw")
  final int? lastUpdateRaw;

  @override
  String toString() {
    return 'VAccountData(puuid: $puuid, region: $region, name: $name, card: $card, tag: $tag, accountLevel: $accountLevel, lastUpdate: $lastUpdate, lastUpdateRaw: $lastUpdateRaw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VAccountDataImpl &&
            (identical(other.puuid, puuid) || other.puuid == puuid) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.accountLevel, accountLevel) ||
                other.accountLevel == accountLevel) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.lastUpdateRaw, lastUpdateRaw) ||
                other.lastUpdateRaw == lastUpdateRaw));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, puuid, region, name, card, tag,
      accountLevel, lastUpdate, lastUpdateRaw);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VAccountDataImplCopyWith<_$VAccountDataImpl> get copyWith =>
      __$$VAccountDataImplCopyWithImpl<_$VAccountDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VAccountDataImplToJson(
      this,
    );
  }
}

abstract class _VAccountData implements VAccountData {
  const factory _VAccountData(
          {final String? puuid,
          final String? region,
          final String? name,
          final VCardModel? card,
          final String? tag,
          @JsonKey(name: "account_level") final int? accountLevel,
          @JsonKey(name: "last_update") final String? lastUpdate,
          @JsonKey(name: "last_update_raw") final int? lastUpdateRaw}) =
      _$VAccountDataImpl;

  factory _VAccountData.fromJson(Map<String, dynamic> json) =
      _$VAccountDataImpl.fromJson;

  @override
  String? get puuid;
  @override
  String? get region;
  @override
  String? get name;
  @override
  VCardModel? get card;
  @override
  String? get tag;
  @override
  @JsonKey(name: "account_level")
  int? get accountLevel;
  @override
  @JsonKey(name: "last_update")
  String? get lastUpdate;
  @override
  @JsonKey(name: "last_update_raw")
  int? get lastUpdateRaw;
  @override
  @JsonKey(ignore: true)
  _$$VAccountDataImplCopyWith<_$VAccountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VCardModel _$VCardModelFromJson(Map<String, dynamic> json) {
  return _VCardModel.fromJson(json);
}

/// @nodoc
mixin _$VCardModel {
  String? get small => throw _privateConstructorUsedError;
  String? get wide => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VCardModelCopyWith<VCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VCardModelCopyWith<$Res> {
  factory $VCardModelCopyWith(
          VCardModel value, $Res Function(VCardModel) then) =
      _$VCardModelCopyWithImpl<$Res, VCardModel>;
  @useResult
  $Res call({String? small, String? wide, String? large, String? id});
}

/// @nodoc
class _$VCardModelCopyWithImpl<$Res, $Val extends VCardModel>
    implements $VCardModelCopyWith<$Res> {
  _$VCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? wide = freezed,
    Object? large = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      wide: freezed == wide
          ? _value.wide
          : wide // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VCardModelImplCopyWith<$Res>
    implements $VCardModelCopyWith<$Res> {
  factory _$$VCardModelImplCopyWith(
          _$VCardModelImpl value, $Res Function(_$VCardModelImpl) then) =
      __$$VCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? small, String? wide, String? large, String? id});
}

/// @nodoc
class __$$VCardModelImplCopyWithImpl<$Res>
    extends _$VCardModelCopyWithImpl<$Res, _$VCardModelImpl>
    implements _$$VCardModelImplCopyWith<$Res> {
  __$$VCardModelImplCopyWithImpl(
      _$VCardModelImpl _value, $Res Function(_$VCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? wide = freezed,
    Object? large = freezed,
    Object? id = freezed,
  }) {
    return _then(_$VCardModelImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      wide: freezed == wide
          ? _value.wide
          : wide // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VCardModelImpl implements _VCardModel {
  const _$VCardModelImpl({this.small, this.wide, this.large, this.id});

  factory _$VCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VCardModelImplFromJson(json);

  @override
  final String? small;
  @override
  final String? wide;
  @override
  final String? large;
  @override
  final String? id;

  @override
  String toString() {
    return 'VCardModel(small: $small, wide: $wide, large: $large, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VCardModelImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.wide, wide) || other.wide == wide) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, wide, large, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VCardModelImplCopyWith<_$VCardModelImpl> get copyWith =>
      __$$VCardModelImplCopyWithImpl<_$VCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VCardModelImplToJson(
      this,
    );
  }
}

abstract class _VCardModel implements VCardModel {
  const factory _VCardModel(
      {final String? small,
      final String? wide,
      final String? large,
      final String? id}) = _$VCardModelImpl;

  factory _VCardModel.fromJson(Map<String, dynamic> json) =
      _$VCardModelImpl.fromJson;

  @override
  String? get small;
  @override
  String? get wide;
  @override
  String? get large;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$VCardModelImplCopyWith<_$VCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
