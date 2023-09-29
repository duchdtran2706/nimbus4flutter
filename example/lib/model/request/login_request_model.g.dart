// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// RecordSupporterGenerator
// **************************************************************************

class _LoginRecord extends Record {
  _LoginRecord()
      : super(
          RecordSchema([
            FieldSchema('mail_address'),
            FieldSchema('password'),
          ]),
        );
}

LoginRecord _$LoginRecordFromJson(Map<String, dynamic> json) {
  final ds = _LoginRecord();
  ds.fromMap(json);
  return LoginRecord(
    json['mail_address'],
    json['password'],
  );
}

Map<String, dynamic> _$LoginRecordToJson(LoginRecord instance) {
  final ds = _LoginRecord();
  ds.setByName('mail_address', instance.mailAddress);
  ds.setByName('password', instance.password);
  return ds.toMap();
}

// **************************************************************************
// DatasetSupporterGenerator
// **************************************************************************

class _DataSet extends DataSet {
  _DataSet() : super('') {
    setHeaderSchema(_CommonRequestRecord().schema!, 'Common');
    setHeaderSchema(_LoginRecord().schema!, 'Login');
    setRecordListSchema(_HeaderQueryRecord().schema!, 'HeaderQuery');
    setRecordListSchema(RecordSchema(const []), 'RecordListQuery');
    setRecordListSchema(RecordSchema(const []), 'NestedRecordQuery');
    setRecordListSchema(RecordSchema(const []), 'NestedRecordListQuery');
  }
}

LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) {
  final ds = _DataSet();
  ds.fromList(json);
  return LoginRequestModel(
    CommonRequestRecord.fromJson(
      ds.getHeader('Common')?.toMap() ?? {},
    ),
    ds
        .getRecordList('HeaderQuery')
        ?.toMap()
        .map((e) => HeaderQueryRecord.fromJson(e))
        .toList(),
    ds.getRecordList('RecordListQuery')?.toMap().map((e) => e).toList(),
    ds.getRecordList('NestedRecordQuery')?.toMap().map((e) => e).toList(),
    ds.getRecordList('NestedRecordListQuery')?.toMap().map((e) => e).toList(),
    LoginRecord.fromJson(
      ds.getHeader('Login')?.toMap() ?? {},
    ),
  );
}

Map<String, dynamic> _$LoginRequestModelToJson(LoginRequestModel instance) {
  final ds = _DataSet();
  final commonRecord = _CommonRequestRecord();
  commonRecord.fromMap(instance.common?.toJson());
  ds.setHeader(commonRecord, 'Common');
  final headerQueryRecord = RecordList(_HeaderQueryRecord().schema!);
  headerQueryRecord
      .fromMap(instance.headerQuery?.map((e) => e.toJson()).toList());
  ds.setRecordList(headerQueryRecord, 'HeaderQuery');
  final loginRecord = _LoginRecord();
  loginRecord.fromMap(instance.login?.toJson());
  ds.setHeader(loginRecord, 'Login');
  return ds.toMap();
}
