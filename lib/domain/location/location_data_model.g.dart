// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationDataModel _$$_LocationDataModelFromJson(Map<String, dynamic> json) =>
    _$_LocationDataModel(
      employeeId: json['employee_id'] as String?,
      employeeName: json['employee_name'] as String?,
      locationCode: json['location_code'] as String?,
      userName: json['user_name'] as String?,
      passwordValue: json['password_value'] as String?,
    );

Map<String, dynamic> _$$_LocationDataModelToJson(
        _$_LocationDataModel instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
      'employee_name': instance.employeeName,
      'location_code': instance.locationCode,
      'user_name': instance.userName,
      'password_value': instance.passwordValue,
    };
