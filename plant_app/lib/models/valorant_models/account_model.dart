// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class VAccountModel with _$VAccountModel {
  const factory VAccountModel({
    int? status,
    VAccountData? data,
  }) = _VAccountModel;

  factory VAccountModel.fromJson(Map<String, dynamic> json) =>
      _$VAccountModelFromJson(json);
}

@freezed
class VAccountData with _$VAccountData {
  const factory VAccountData({
    String? puuid,
    String? region,
    String? name,
    VCardModel? card,
    String? tag,
    @JsonKey(name: "account_level") int? accountLevel,
    @JsonKey(name: "last_update") String? lastUpdate,
    @JsonKey(name: "last_update_raw") int? lastUpdateRaw,
  }) = _VAccountData;

  factory VAccountData.fromJson(Map<String, dynamic> json) =>
      _$VAccountDataFromJson(json);
}

@freezed
class VCardModel with _$VCardModel {
  const factory VCardModel({
    String? small,
    String? wide,
    String? large,
    String? id,
  }) = _VCardModel;

  factory VCardModel.fromJson(Map<String, dynamic> json) =>
      _$VCardModelFromJson(json);
}
