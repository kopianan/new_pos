// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discount_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscountDataModel _$DiscountDataModelFromJson(Map<String, dynamic> json) {
  return _DiscountDataModel.fromJson(json);
}

/// @nodoc
mixin _$DiscountDataModel {
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_type_id")
  String? get customertypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "event_discount")
  String? get eventDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "kategori_id")
  String? get kategoriId => throw _privateConstructorUsedError;
  @JsonKey(name: "event_end_date")
  String? get eventEndDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountDataModelCopyWith<DiscountDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountDataModelCopyWith<$Res> {
  factory $DiscountDataModelCopyWith(
          DiscountDataModel value, $Res Function(DiscountDataModel) then) =
      _$DiscountDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_type_id") String? customertypeId,
      @JsonKey(name: "event_discount") String? eventDiscount,
      @JsonKey(name: "kategori_id") String? kategoriId,
      @JsonKey(name: "event_end_date") String? eventEndDate});
}

/// @nodoc
class _$DiscountDataModelCopyWithImpl<$Res>
    implements $DiscountDataModelCopyWith<$Res> {
  _$DiscountDataModelCopyWithImpl(this._value, this._then);

  final DiscountDataModel _value;
  // ignore: unused_field
  final $Res Function(DiscountDataModel) _then;

  @override
  $Res call({
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customertypeId = freezed,
    Object? eventDiscount = freezed,
    Object? kategoriId = freezed,
    Object? eventEndDate = freezed,
  }) {
    return _then(_value.copyWith(
      customerCode: customerCode == freezed
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customertypeId: customertypeId == freezed
          ? _value.customertypeId
          : customertypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDiscount: eventDiscount == freezed
          ? _value.eventDiscount
          : eventDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      kategoriId: kategoriId == freezed
          ? _value.kategoriId
          : kategoriId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventEndDate: eventEndDate == freezed
          ? _value.eventEndDate
          : eventEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DiscountDataModelCopyWith<$Res>
    implements $DiscountDataModelCopyWith<$Res> {
  factory _$$_DiscountDataModelCopyWith(_$_DiscountDataModel value,
          $Res Function(_$_DiscountDataModel) then) =
      __$$_DiscountDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_type_id") String? customertypeId,
      @JsonKey(name: "event_discount") String? eventDiscount,
      @JsonKey(name: "kategori_id") String? kategoriId,
      @JsonKey(name: "event_end_date") String? eventEndDate});
}

/// @nodoc
class __$$_DiscountDataModelCopyWithImpl<$Res>
    extends _$DiscountDataModelCopyWithImpl<$Res>
    implements _$$_DiscountDataModelCopyWith<$Res> {
  __$$_DiscountDataModelCopyWithImpl(
      _$_DiscountDataModel _value, $Res Function(_$_DiscountDataModel) _then)
      : super(_value, (v) => _then(v as _$_DiscountDataModel));

  @override
  _$_DiscountDataModel get _value => super._value as _$_DiscountDataModel;

  @override
  $Res call({
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customertypeId = freezed,
    Object? eventDiscount = freezed,
    Object? kategoriId = freezed,
    Object? eventEndDate = freezed,
  }) {
    return _then(_$_DiscountDataModel(
      customerCode: customerCode == freezed
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customertypeId: customertypeId == freezed
          ? _value.customertypeId
          : customertypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDiscount: eventDiscount == freezed
          ? _value.eventDiscount
          : eventDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      kategoriId: kategoriId == freezed
          ? _value.kategoriId
          : kategoriId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventEndDate: eventEndDate == freezed
          ? _value.eventEndDate
          : eventEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountDataModel implements _DiscountDataModel {
  _$_DiscountDataModel(
      {@JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "customer_type_id") this.customertypeId,
      @JsonKey(name: "event_discount") this.eventDiscount,
      @JsonKey(name: "kategori_id") this.kategoriId,
      @JsonKey(name: "event_end_date") this.eventEndDate});

  factory _$_DiscountDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountDataModelFromJson(json);

  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "customer_type_id")
  final String? customertypeId;
  @override
  @JsonKey(name: "event_discount")
  final String? eventDiscount;
  @override
  @JsonKey(name: "kategori_id")
  final String? kategoriId;
  @override
  @JsonKey(name: "event_end_date")
  final String? eventEndDate;

  @override
  String toString() {
    return 'DiscountDataModel(customerCode: $customerCode, customerName: $customerName, customertypeId: $customertypeId, eventDiscount: $eventDiscount, kategoriId: $kategoriId, eventEndDate: $eventEndDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscountDataModel &&
            const DeepCollectionEquality()
                .equals(other.customerCode, customerCode) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.customertypeId, customertypeId) &&
            const DeepCollectionEquality()
                .equals(other.eventDiscount, eventDiscount) &&
            const DeepCollectionEquality()
                .equals(other.kategoriId, kategoriId) &&
            const DeepCollectionEquality()
                .equals(other.eventEndDate, eventEndDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerCode),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(customertypeId),
      const DeepCollectionEquality().hash(eventDiscount),
      const DeepCollectionEquality().hash(kategoriId),
      const DeepCollectionEquality().hash(eventEndDate));

  @JsonKey(ignore: true)
  @override
  _$$_DiscountDataModelCopyWith<_$_DiscountDataModel> get copyWith =>
      __$$_DiscountDataModelCopyWithImpl<_$_DiscountDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountDataModelToJson(
      this,
    );
  }
}

abstract class _DiscountDataModel implements DiscountDataModel {
  factory _DiscountDataModel(
          {@JsonKey(name: "customer_code") final String? customerCode,
          @JsonKey(name: "customer_name") final String? customerName,
          @JsonKey(name: "customer_type_id") final String? customertypeId,
          @JsonKey(name: "event_discount") final String? eventDiscount,
          @JsonKey(name: "kategori_id") final String? kategoriId,
          @JsonKey(name: "event_end_date") final String? eventEndDate}) =
      _$_DiscountDataModel;

  factory _DiscountDataModel.fromJson(Map<String, dynamic> json) =
      _$_DiscountDataModel.fromJson;

  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "customer_type_id")
  String? get customertypeId;
  @override
  @JsonKey(name: "event_discount")
  String? get eventDiscount;
  @override
  @JsonKey(name: "kategori_id")
  String? get kategoriId;
  @override
  @JsonKey(name: "event_end_date")
  String? get eventEndDate;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountDataModelCopyWith<_$_DiscountDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
