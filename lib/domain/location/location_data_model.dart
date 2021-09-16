import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_data_model.freezed.dart';
part 'location_data_model.g.dart';

@freezed
class LocationDataModel with _$LocationDataModel {
  factory LocationDataModel({
    @Default("")
    @JsonKey(name: "employee_id", includeIfNull: true)
        String? employeeId,
    @Default("")
    @JsonKey(name: "employee_name", includeIfNull: true)
        String? employeeName,
    @Default("")
    @JsonKey(name: "location_code", includeIfNull: true)
        String? locationCode,
    @Default("")
    @JsonKey(name: "user_name", includeIfNull: true)
        String? userName,
    @Default("")
    @JsonKey(name: "password_value", includeIfNull: true)
        String? passwordValue,
  }) = _LocationDataModel;

  factory LocationDataModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDataModelFromJson(json);
}
