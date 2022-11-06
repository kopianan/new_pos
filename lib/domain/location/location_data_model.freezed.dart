// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDataModel _$LocationDataModelFromJson(Map<String, dynamic> json) {
  return _LocationDataModel.fromJson(json);
}

/// @nodoc
mixin _$LocationDataModel {
  @JsonKey(name: "employee_id", includeIfNull: true)
  String? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: "employee_name", includeIfNull: true)
  String? get employeeName => throw _privateConstructorUsedError;
  @JsonKey(name: "location_code", includeIfNull: true)
  String? get locationCode => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name", includeIfNull: true)
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "password_value", includeIfNull: true)
  String? get passwordValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDataModelCopyWith<LocationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDataModelCopyWith<$Res> {
  factory $LocationDataModelCopyWith(
          LocationDataModel value, $Res Function(LocationDataModel) then) =
      _$LocationDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "employee_id", includeIfNull: true)
          String? employeeId,
      @JsonKey(name: "employee_name", includeIfNull: true)
          String? employeeName,
      @JsonKey(name: "location_code", includeIfNull: true)
          String? locationCode,
      @JsonKey(name: "user_name", includeIfNull: true)
          String? userName,
      @JsonKey(name: "password_value", includeIfNull: true)
          String? passwordValue});
}

/// @nodoc
class _$LocationDataModelCopyWithImpl<$Res>
    implements $LocationDataModelCopyWith<$Res> {
  _$LocationDataModelCopyWithImpl(this._value, this._then);

  final LocationDataModel _value;
  // ignore: unused_field
  final $Res Function(LocationDataModel) _then;

  @override
  $Res call({
    Object? employeeId = freezed,
    Object? employeeName = freezed,
    Object? locationCode = freezed,
    Object? userName = freezed,
    Object? passwordValue = freezed,
  }) {
    return _then(_value.copyWith(
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeName: employeeName == freezed
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationCode: locationCode == freezed
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordValue: passwordValue == freezed
          ? _value.passwordValue
          : passwordValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationDataModelCopyWith<$Res>
    implements $LocationDataModelCopyWith<$Res> {
  factory _$$_LocationDataModelCopyWith(_$_LocationDataModel value,
          $Res Function(_$_LocationDataModel) then) =
      __$$_LocationDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "employee_id", includeIfNull: true)
          String? employeeId,
      @JsonKey(name: "employee_name", includeIfNull: true)
          String? employeeName,
      @JsonKey(name: "location_code", includeIfNull: true)
          String? locationCode,
      @JsonKey(name: "user_name", includeIfNull: true)
          String? userName,
      @JsonKey(name: "password_value", includeIfNull: true)
          String? passwordValue});
}

/// @nodoc
class __$$_LocationDataModelCopyWithImpl<$Res>
    extends _$LocationDataModelCopyWithImpl<$Res>
    implements _$$_LocationDataModelCopyWith<$Res> {
  __$$_LocationDataModelCopyWithImpl(
      _$_LocationDataModel _value, $Res Function(_$_LocationDataModel) _then)
      : super(_value, (v) => _then(v as _$_LocationDataModel));

  @override
  _$_LocationDataModel get _value => super._value as _$_LocationDataModel;

  @override
  $Res call({
    Object? employeeId = freezed,
    Object? employeeName = freezed,
    Object? locationCode = freezed,
    Object? userName = freezed,
    Object? passwordValue = freezed,
  }) {
    return _then(_$_LocationDataModel(
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeName: employeeName == freezed
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationCode: locationCode == freezed
          ? _value.locationCode
          : locationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordValue: passwordValue == freezed
          ? _value.passwordValue
          : passwordValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDataModel implements _LocationDataModel {
  _$_LocationDataModel(
      {@JsonKey(name: "employee_id", includeIfNull: true)
          this.employeeId = "",
      @JsonKey(name: "employee_name", includeIfNull: true)
          this.employeeName = "",
      @JsonKey(name: "location_code", includeIfNull: true)
          this.locationCode = "",
      @JsonKey(name: "user_name", includeIfNull: true)
          this.userName = "",
      @JsonKey(name: "password_value", includeIfNull: true)
          this.passwordValue = ""});

  factory _$_LocationDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDataModelFromJson(json);

  @override
  @JsonKey(name: "employee_id", includeIfNull: true)
  final String? employeeId;
  @override
  @JsonKey(name: "employee_name", includeIfNull: true)
  final String? employeeName;
  @override
  @JsonKey(name: "location_code", includeIfNull: true)
  final String? locationCode;
  @override
  @JsonKey(name: "user_name", includeIfNull: true)
  final String? userName;
  @override
  @JsonKey(name: "password_value", includeIfNull: true)
  final String? passwordValue;

  @override
  String toString() {
    return 'LocationDataModel(employeeId: $employeeId, employeeName: $employeeName, locationCode: $locationCode, userName: $userName, passwordValue: $passwordValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationDataModel &&
            const DeepCollectionEquality()
                .equals(other.employeeId, employeeId) &&
            const DeepCollectionEquality()
                .equals(other.employeeName, employeeName) &&
            const DeepCollectionEquality()
                .equals(other.locationCode, locationCode) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.passwordValue, passwordValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(employeeId),
      const DeepCollectionEquality().hash(employeeName),
      const DeepCollectionEquality().hash(locationCode),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(passwordValue));

  @JsonKey(ignore: true)
  @override
  _$$_LocationDataModelCopyWith<_$_LocationDataModel> get copyWith =>
      __$$_LocationDataModelCopyWithImpl<_$_LocationDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDataModelToJson(
      this,
    );
  }
}

abstract class _LocationDataModel implements LocationDataModel {
  factory _LocationDataModel(
      {@JsonKey(name: "employee_id", includeIfNull: true)
          final String? employeeId,
      @JsonKey(name: "employee_name", includeIfNull: true)
          final String? employeeName,
      @JsonKey(name: "location_code", includeIfNull: true)
          final String? locationCode,
      @JsonKey(name: "user_name", includeIfNull: true)
          final String? userName,
      @JsonKey(name: "password_value", includeIfNull: true)
          final String? passwordValue}) = _$_LocationDataModel;

  factory _LocationDataModel.fromJson(Map<String, dynamic> json) =
      _$_LocationDataModel.fromJson;

  @override
  @JsonKey(name: "employee_id", includeIfNull: true)
  String? get employeeId;
  @override
  @JsonKey(name: "employee_name", includeIfNull: true)
  String? get employeeName;
  @override
  @JsonKey(name: "location_code", includeIfNull: true)
  String? get locationCode;
  @override
  @JsonKey(name: "user_name", includeIfNull: true)
  String? get userName;
  @override
  @JsonKey(name: "password_value", includeIfNull: true)
  String? get passwordValue;
  @override
  @JsonKey(ignore: true)
  _$$_LocationDataModelCopyWith<_$_LocationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
