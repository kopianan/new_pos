// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sale_transaction_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleTransactionDataModel _$SaleTransactionDataModelFromJson(
    Map<String, dynamic> json) {
  return _SaleTransactionDataModel.fromJson(json);
}

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
abstract class _$$_SaleTransactionDataModelCopyWith<$Res>
    implements $SaleTransactionDataModelCopyWith<$Res> {
  factory _$$_SaleTransactionDataModelCopyWith(
          _$_SaleTransactionDataModel value,
          $Res Function(_$_SaleTransactionDataModel) then) =
      __$$_SaleTransactionDataModelCopyWithImpl<$Res>;
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
class __$$_SaleTransactionDataModelCopyWithImpl<$Res>
    extends _$SaleTransactionDataModelCopyWithImpl<$Res>
    implements _$$_SaleTransactionDataModelCopyWith<$Res> {
  __$$_SaleTransactionDataModelCopyWithImpl(_$_SaleTransactionDataModel _value,
      $Res Function(_$_SaleTransactionDataModel) _then)
      : super(_value, (v) => _then(v as _$_SaleTransactionDataModel));

  @override
  _$_SaleTransactionDataModel get _value =>
      super._value as _$_SaleTransactionDataModel;

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
    return _then(_$_SaleTransactionDataModel(
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
          ? _value._listProduct
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
      required final List<ProductDataModel> listProduct})
      : _listProduct = listProduct;

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
  final List<ProductDataModel> _listProduct;
  @override
  List<ProductDataModel> get listProduct {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'SaleTransactionDataModel(transactionNumber: $transactionNumber, selectedLocation: $selectedLocation, date: $date, total: $total, selectedCustomer: $selectedCustomer, paymentTerm: $paymentTerm, paymentType: $paymentType, status: $status, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleTransactionDataModel &&
            const DeepCollectionEquality()
                .equals(other.transactionNumber, transactionNumber) &&
            const DeepCollectionEquality()
                .equals(other.selectedLocation, selectedLocation) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.selectedCustomer, selectedCustomer) &&
            const DeepCollectionEquality()
                .equals(other.paymentTerm, paymentTerm) &&
            const DeepCollectionEquality()
                .equals(other.paymentType, paymentType) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transactionNumber),
      const DeepCollectionEquality().hash(selectedLocation),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(selectedCustomer),
      const DeepCollectionEquality().hash(paymentTerm),
      const DeepCollectionEquality().hash(paymentType),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  _$$_SaleTransactionDataModelCopyWith<_$_SaleTransactionDataModel>
      get copyWith => __$$_SaleTransactionDataModelCopyWithImpl<
          _$_SaleTransactionDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleTransactionDataModelToJson(
      this,
    );
  }
}

abstract class _SaleTransactionDataModel implements SaleTransactionDataModel {
  factory _SaleTransactionDataModel(
          {required final String transactionNumber,
          required final LocationDataModel selectedLocation,
          required final DateTime date,
          required final String total,
          required final CustomerDataModel selectedCustomer,
          required final PaymentTerm paymentTerm,
          required final PaymentType paymentType,
          required final String status,
          required final List<ProductDataModel> listProduct}) =
      _$_SaleTransactionDataModel;

  factory _SaleTransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$_SaleTransactionDataModel.fromJson;

  @override
  String get transactionNumber;
  @override
  LocationDataModel get selectedLocation;
  @override
  DateTime get date;
  @override
  String get total;
  @override
  CustomerDataModel get selectedCustomer;
  @override
  PaymentTerm get paymentTerm;
  @override
  PaymentType get paymentType;
  @override
  String get status;
  @override
  List<ProductDataModel> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$_SaleTransactionDataModelCopyWith<_$_SaleTransactionDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
