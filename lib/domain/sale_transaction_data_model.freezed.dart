// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sale_transaction_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleTransactionDataModel _$SaleTransactionDataModelFromJson(
    Map<String, dynamic> json) {
  return _SaleTransactionDataModel.fromJson(json);
}

/// @nodoc
class _$SaleTransactionDataModelTearOff {
  const _$SaleTransactionDataModelTearOff();

  _SaleTransactionDataModel call(
      {required String transactionNumber,
      required LocationDataModel selectedLocation,
      required DateTime date,
      required String total,
      required CustomerDataModel selectedCustomer,
      required PaymentTerm paymentTerm,
      required PaymentType paymentType,
      required String status,
      required List<ProductDataModel> listProduct}) {
    return _SaleTransactionDataModel(
      transactionNumber: transactionNumber,
      selectedLocation: selectedLocation,
      date: date,
      total: total,
      selectedCustomer: selectedCustomer,
      paymentTerm: paymentTerm,
      paymentType: paymentType,
      status: status,
      listProduct: listProduct,
    );
  }

  SaleTransactionDataModel fromJson(Map<String, Object> json) {
    return SaleTransactionDataModel.fromJson(json);
  }
}

/// @nodoc
const $SaleTransactionDataModel = _$SaleTransactionDataModelTearOff();

/// @nodoc
mixin _$SaleTransactionDataModel {
  String get transactionNumber => throw _privateConstructorUsedError;
  LocationDataModel get selectedLocation => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  CustomerDataModel get selectedCustomer => throw _privateConstructorUsedError;
  PaymentTerm get paymentTerm => throw _privateConstructorUsedError;
  PaymentType get paymentType => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<ProductDataModel> get listProduct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleTransactionDataModelCopyWith<SaleTransactionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleTransactionDataModelCopyWith<$Res> {
  factory $SaleTransactionDataModelCopyWith(SaleTransactionDataModel value,
          $Res Function(SaleTransactionDataModel) then) =
      _$SaleTransactionDataModelCopyWithImpl<$Res>;
  $Res call(
      {String transactionNumber,
      LocationDataModel selectedLocation,
      DateTime date,
      String total,
      CustomerDataModel selectedCustomer,
      PaymentTerm paymentTerm,
      PaymentType paymentType,
      String status,
      List<ProductDataModel> listProduct});

  $LocationDataModelCopyWith<$Res> get selectedLocation;
  $CustomerDataModelCopyWith<$Res> get selectedCustomer;
  $PaymentTermCopyWith<$Res> get paymentTerm;
  $PaymentTypeCopyWith<$Res> get paymentType;
}

/// @nodoc
class _$SaleTransactionDataModelCopyWithImpl<$Res>
    implements $SaleTransactionDataModelCopyWith<$Res> {
  _$SaleTransactionDataModelCopyWithImpl(this._value, this._then);

  final SaleTransactionDataModel _value;
  // ignore: unused_field
  final $Res Function(SaleTransactionDataModel) _then;

  @override
  $Res call({
    Object? transactionNumber = freezed,
    Object? selectedLocation = freezed,
    Object? date = freezed,
    Object? total = freezed,
    Object? selectedCustomer = freezed,
    Object? paymentTerm = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
    Object? listProduct = freezed,
  }) {
    return _then(_value.copyWith(
      transactionNumber: transactionNumber == freezed
          ? _value.transactionNumber
          : transactionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      selectedLocation: selectedLocation == freezed
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as LocationDataModel,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCustomer: selectedCustomer == freezed
          ? _value.selectedCustomer
          : selectedCustomer // ignore: cast_nullable_to_non_nullable
              as CustomerDataModel,
      paymentTerm: paymentTerm == freezed
          ? _value.paymentTerm
          : paymentTerm // ignore: cast_nullable_to_non_nullable
              as PaymentTerm,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: listProduct == freezed
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
    ));
  }

  @override
  $LocationDataModelCopyWith<$Res> get selectedLocation {
    return $LocationDataModelCopyWith<$Res>(_value.selectedLocation, (value) {
      return _then(_value.copyWith(selectedLocation: value));
    });
  }

  @override
  $CustomerDataModelCopyWith<$Res> get selectedCustomer {
    return $CustomerDataModelCopyWith<$Res>(_value.selectedCustomer, (value) {
      return _then(_value.copyWith(selectedCustomer: value));
    });
  }

  @override
  $PaymentTermCopyWith<$Res> get paymentTerm {
    return $PaymentTermCopyWith<$Res>(_value.paymentTerm, (value) {
      return _then(_value.copyWith(paymentTerm: value));
    });
  }

  @override
  $PaymentTypeCopyWith<$Res> get paymentType {
    return $PaymentTypeCopyWith<$Res>(_value.paymentType, (value) {
      return _then(_value.copyWith(paymentType: value));
    });
  }
}

/// @nodoc
abstract class _$SaleTransactionDataModelCopyWith<$Res>
    implements $SaleTransactionDataModelCopyWith<$Res> {
  factory _$SaleTransactionDataModelCopyWith(_SaleTransactionDataModel value,
          $Res Function(_SaleTransactionDataModel) then) =
      __$SaleTransactionDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String transactionNumber,
      LocationDataModel selectedLocation,
      DateTime date,
      String total,
      CustomerDataModel selectedCustomer,
      PaymentTerm paymentTerm,
      PaymentType paymentType,
      String status,
      List<ProductDataModel> listProduct});

  @override
  $LocationDataModelCopyWith<$Res> get selectedLocation;
  @override
  $CustomerDataModelCopyWith<$Res> get selectedCustomer;
  @override
  $PaymentTermCopyWith<$Res> get paymentTerm;
  @override
  $PaymentTypeCopyWith<$Res> get paymentType;
}

/// @nodoc
class __$SaleTransactionDataModelCopyWithImpl<$Res>
    extends _$SaleTransactionDataModelCopyWithImpl<$Res>
    implements _$SaleTransactionDataModelCopyWith<$Res> {
  __$SaleTransactionDataModelCopyWithImpl(_SaleTransactionDataModel _value,
      $Res Function(_SaleTransactionDataModel) _then)
      : super(_value, (v) => _then(v as _SaleTransactionDataModel));

  @override
  _SaleTransactionDataModel get _value =>
      super._value as _SaleTransactionDataModel;

  @override
  $Res call({
    Object? transactionNumber = freezed,
    Object? selectedLocation = freezed,
    Object? date = freezed,
    Object? total = freezed,
    Object? selectedCustomer = freezed,
    Object? paymentTerm = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
    Object? listProduct = freezed,
  }) {
    return _then(_SaleTransactionDataModel(
      transactionNumber: transactionNumber == freezed
          ? _value.transactionNumber
          : transactionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      selectedLocation: selectedLocation == freezed
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as LocationDataModel,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCustomer: selectedCustomer == freezed
          ? _value.selectedCustomer
          : selectedCustomer // ignore: cast_nullable_to_non_nullable
              as CustomerDataModel,
      paymentTerm: paymentTerm == freezed
          ? _value.paymentTerm
          : paymentTerm // ignore: cast_nullable_to_non_nullable
              as PaymentTerm,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: listProduct == freezed
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaleTransactionDataModel implements _SaleTransactionDataModel {
  _$_SaleTransactionDataModel(
      {required this.transactionNumber,
      required this.selectedLocation,
      required this.date,
      required this.total,
      required this.selectedCustomer,
      required this.paymentTerm,
      required this.paymentType,
      required this.status,
      required this.listProduct});

  factory _$_SaleTransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_SaleTransactionDataModelFromJson(json);

  @override
  final String transactionNumber;
  @override
  final LocationDataModel selectedLocation;
  @override
  final DateTime date;
  @override
  final String total;
  @override
  final CustomerDataModel selectedCustomer;
  @override
  final PaymentTerm paymentTerm;
  @override
  final PaymentType paymentType;
  @override
  final String status;
  @override
  final List<ProductDataModel> listProduct;

  @override
  String toString() {
    return 'SaleTransactionDataModel(transactionNumber: $transactionNumber, selectedLocation: $selectedLocation, date: $date, total: $total, selectedCustomer: $selectedCustomer, paymentTerm: $paymentTerm, paymentType: $paymentType, status: $status, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaleTransactionDataModel &&
            (identical(other.transactionNumber, transactionNumber) ||
                const DeepCollectionEquality()
                    .equals(other.transactionNumber, transactionNumber)) &&
            (identical(other.selectedLocation, selectedLocation) ||
                const DeepCollectionEquality()
                    .equals(other.selectedLocation, selectedLocation)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.selectedCustomer, selectedCustomer) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCustomer, selectedCustomer)) &&
            (identical(other.paymentTerm, paymentTerm) ||
                const DeepCollectionEquality()
                    .equals(other.paymentTerm, paymentTerm)) &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.listProduct, listProduct) ||
                const DeepCollectionEquality()
                    .equals(other.listProduct, listProduct)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionNumber) ^
      const DeepCollectionEquality().hash(selectedLocation) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(selectedCustomer) ^
      const DeepCollectionEquality().hash(paymentTerm) ^
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(listProduct);

  @JsonKey(ignore: true)
  @override
  _$SaleTransactionDataModelCopyWith<_SaleTransactionDataModel> get copyWith =>
      __$SaleTransactionDataModelCopyWithImpl<_SaleTransactionDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleTransactionDataModelToJson(this);
  }
}

abstract class _SaleTransactionDataModel implements SaleTransactionDataModel {
  factory _SaleTransactionDataModel(
          {required String transactionNumber,
          required LocationDataModel selectedLocation,
          required DateTime date,
          required String total,
          required CustomerDataModel selectedCustomer,
          required PaymentTerm paymentTerm,
          required PaymentType paymentType,
          required String status,
          required List<ProductDataModel> listProduct}) =
      _$_SaleTransactionDataModel;

  factory _SaleTransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$_SaleTransactionDataModel.fromJson;

  @override
  String get transactionNumber => throw _privateConstructorUsedError;
  @override
  LocationDataModel get selectedLocation => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  String get total => throw _privateConstructorUsedError;
  @override
  CustomerDataModel get selectedCustomer => throw _privateConstructorUsedError;
  @override
  PaymentTerm get paymentTerm => throw _privateConstructorUsedError;
  @override
  PaymentType get paymentType => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  List<ProductDataModel> get listProduct => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SaleTransactionDataModelCopyWith<_SaleTransactionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
