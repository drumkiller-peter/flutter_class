// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dashboard_model.g.dart';

@JsonSerializable()
class DashboardModel extends Equatable {
  final String email;
  final String password;
  final String uid;
  const DashboardModel({
    required this.email,
    required this.password,
    required this.uid,
  });

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardModelToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [email, password, uid];
}
