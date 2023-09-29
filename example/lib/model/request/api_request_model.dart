import 'package:http/http.dart';
import 'package:nimbus_annotation/nimbus_annotation.dart';
import 'package:nimbus4flutter/nimbus4flutter.dart';

part 'api_request_model.g.dart';

@DatasetSerializable()
class ApiRequestModel {
  @DatasetHeader()
  final CommonRequestRecord? common;

  @DatasetRecordList()
  final List<HeaderQueryRecord>? headerQuery;
  @DatasetRecordList()
  final List? recordListQuery;
  @DatasetRecordList()
  final List? nestedRecordQuery;
  @DatasetRecordList()
  final List? nestedRecordListQuery;

  ApiRequestModel(this.common, this.headerQuery, this.recordListQuery,
      this.nestedRecordQuery, this.nestedRecordListQuery);

  factory ApiRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ApiRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiRequestModelToJson(this);
}

@RecordSerializable()
class HeaderQueryRecord {
  final String? name;
  final List<String>? propertyNames;

  HeaderQueryRecord(this.name, this.propertyNames);

  factory HeaderQueryRecord.fromJson(Map<String, dynamic> json) =>
      _$HeaderQueryRecordFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderQueryRecordToJson(this);
}

@RecordSerializable()
class CommonRequestRecord {
  final OsRecord? os;
  final ApplicationRecord? application;
  final String? userId;
  final String? sessionId;

  CommonRequestRecord(this.os, this.application, this.userId, this.sessionId);

  factory CommonRequestRecord.fromJson(Map<String, dynamic> json) =>
      _$CommonRequestRecordFromJson(json);

  Map<String, dynamic> toJson() => _$CommonRequestRecordToJson(this);
}

@RecordSerializable()
class OsRecord {
  OsRecord(this.osId, this.osVersion);

  final String? osId;
  final String? osVersion;

  factory OsRecord.fromJson(Map<String, dynamic> json) =>
      _$OsRecordFromJson(json);

  Map<String, dynamic> toJson() => _$OsRecordToJson(this);
}

@RecordSerializable()
class ApplicationRecord {
  ApplicationRecord(this.applicationId, this.applicationVersion);

  final String? applicationId;
  final String? applicationVersion;

  factory ApplicationRecord.fromJson(Map<String, dynamic> json) =>
      _$ApplicationRecordFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationRecordToJson(this);
}
