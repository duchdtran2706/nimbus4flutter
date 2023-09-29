// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// RecordSupporterGenerator
// **************************************************************************

class _LoginRequestRecord extends Record {
  _LoginRequestRecord()
      : super(
          RecordSchema([
            FieldSchema('mail_address'),
            FieldSchema('password'),
          ]),
        );
}

LoginRequestRecord _$LoginRequestRecordFromJson(Map<String, dynamic> json) {
  final ds = _LoginRequestRecord();
  ds.fromMap(json);
  return LoginRequestRecord(
    json['mail_address'],
    json['password'],
  );
}

Map<String, dynamic> _$LoginRequestRecordToJson(LoginRequestRecord instance) {
  final ds = _LoginRequestRecord();
  ds.setByName('mail_address', instance.mailAddress);
  ds.setByName('password', instance.password);
  return ds.toMap();
}

class _HeaderQueryRecord extends Record {
  _HeaderQueryRecord()
      : super(
          RecordSchema([
            FieldSchema('name'),
            FieldSchema<List<String>>('propertyNames'),
          ]),
        );
}

// **************************************************************************
// DatasetSupporterGenerator
// **************************************************************************

class _DataSet extends DataSet {
  _DataSet() : super('') {
    setHeaderSchema(_LoginRequestRecord().schema!, 'Login');
    setRecordListSchema(_HeaderQueryRecord().schema!, 'HeaderQuery');

    final record = getRecordList('HeaderQuery');

    if (record != null) {
      getRecordList('HeaderQuery')?.addAll([
        record.createRecord(values: {'name': 'Common'}),
        record.createRecord(
          values: {
            'name': 'Login',
            'propertyNames': ['user_id', 'session_id'],
          },
        ),
      ]);
    }
  }
}

LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) {
  final ds = _DataSet();
  ds.fromList(json);
  return LoginRequestModel(
    LoginRequestRecord.fromJson(
      ds.getHeader('Login')?.toMap() ?? {},
    ),
  );
}

Map<String, dynamic> _$LoginRequestModelToJson(LoginRequestModel instance) {
  final ds = _DataSet();
  final loginRecord = _LoginRequestRecord();
  loginRecord.fromMap(instance.login?.toJson());
  ds.setHeader(loginRecord, 'Login');
  return ds.toMap();
}
