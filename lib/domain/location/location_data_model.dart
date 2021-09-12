import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_data_model.freezed.dart';
part 'location_data_model.g.dart';

@freezed
class LocationDataModel with _$LocationDataModel {
  factory LocationDataModel({
    @JsonKey(name: "employee_id") String? employeeId,
    @JsonKey(name: "employee_name") String? employeeName,
    @JsonKey(name: "location_code") String? locationCode,
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "password_value") String? passwordValue,
  }) = _LocationDataModel;

  factory LocationDataModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDataModelFromJson(json);
}
