import 'package:nimbus4flutter/nimbus4flutter.dart';
import 'package:nimbus_annotation/nimbus_annotation.dart';

import 'api_response_model.dart';

part 'login_response_model.g.dart';

/// "schema": {
//      "header": {
//          "Common": [
//              "result_code",
//              "result_message"
//          ],
//          "Login": [
//              "user_id",
//              "session_id",
//          ]
//      }
//  },
@DatasetSerializable(name: 'ResponseDataSet')
class LoginResponseModel extends ApiResponseModel {
  LoginResponseModel(super.common, this.login);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);

  @DatasetHeader()
  final LoginRecord? login;
}

@RecordSerializable()
class LoginRecord {
  LoginRecord(this.userId, this.sessionId);

  factory LoginRecord.fromJson(Map<String, dynamic> json) =>
      _$LoginRecordFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRecordToJson(this);

  final String? userId;
  final String? sessionId;
}
