// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return _AuthModel.fromJson(json);
}

/// @nodoc
mixin _$AuthModel {
  String get uuid => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  DateTime? get lastLogin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res, AuthModel>;
  @useResult
  $Res call({String uuid, String? email, DateTime? lastLogin});
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res, $Val extends AuthModel>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? email = freezed,
    Object? lastLogin = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthModelImplCopyWith<$Res>
    implements $AuthModelCopyWith<$Res> {
  factory _$$AuthModelImplCopyWith(
          _$AuthModelImpl value, $Res Function(_$AuthModelImpl) then) =
      __$$AuthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String? email, DateTime? lastLogin});
}

/// @nodoc
class __$$AuthModelImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelImpl>
    implements _$$AuthModelImplCopyWith<$Res> {
  __$$AuthModelImplCopyWithImpl(
      _$AuthModelImpl _value, $Res Function(_$AuthModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? email = freezed,
    Object? lastLogin = freezed,
  }) {
    return _then(_$AuthModelImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthModelImpl implements _AuthModel {
  const _$AuthModelImpl({required this.uuid, this.email, this.lastLogin});

  factory _$AuthModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthModelImplFromJson(json);

  @override
  final String uuid;
  @override
  final String? email;
  @override
  final DateTime? lastLogin;

  @override
  String toString() {
    return 'AuthModel(uuid: $uuid, email: $email, lastLogin: $lastLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthModelImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, email, lastLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthModelImplCopyWith<_$AuthModelImpl> get copyWith =>
      __$$AuthModelImplCopyWithImpl<_$AuthModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthModelImplToJson(
      this,
    );
  }
}

abstract class _AuthModel implements AuthModel {
  const factory _AuthModel(
      {required final String uuid,
      final String? email,
      final DateTime? lastLogin}) = _$AuthModelImpl;

  factory _AuthModel.fromJson(Map<String, dynamic> json) =
      _$AuthModelImpl.fromJson;

  @override
  String get uuid;
  @override
  String? get email;
  @override
  DateTime? get lastLogin;
  @override
  @JsonKey(ignore: true)
  _$$AuthModelImplCopyWith<_$AuthModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
