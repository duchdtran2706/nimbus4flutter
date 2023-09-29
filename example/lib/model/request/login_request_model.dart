import 'package:nimbus4flutter/nimbus4flutter.dart';
import 'package:nimbus_annotation/nimbus_annotation.dart';

import 'api_request_model.dart';

part 'login_request_model.g.dart';

@DatasetSerializable()
class LoginRequestModel extends ApiRequestModel {
  @DatasetHeader()
  final LoginRecord? login;

  LoginRequestModel(
    super.common,
    super.headerQuery,
    super.recordListQuery,
    super.nestedRecordQuery,
    super.nestedRecordListQuery,
    this.login,
  );

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}

@RecordSerializable()
class LoginRecord {
  final String? mailAddress;
  final String? password;

  LoginRecord(this.mailAddress, this.password);

  factory LoginRecord.fromJson(Map<String, dynamic> json) =>
      _$LoginRecordFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRecordToJson(this);
}
