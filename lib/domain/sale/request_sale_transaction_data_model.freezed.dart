// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_sale_transaction_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestSaleTransactionDataModel _$RequestSaleTransactionDataModelFromJson(
    Map<String, dynamic> json) {
  return _RequestSaleTransactionDataModel.fromJson(json);
}

/// @nodoc
class _$RequestSaleTransactionDataModelTearOff {
  const _$RequestSaleTransactionDataModelTearOff();

  _RequestSaleTransactionDataModel call(
      {@JsonKey(name: "trans_no") String? transNo,
      @JsonKey(name: "trans_type") String? transType,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "trans_dt") String? transDt,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "create_by") String? createBy,
      @JsonKey(name: "remark") String? remark,
      @JsonKey(name: "pmttype") String? pmttype,
      @JsonKey(name: "pmtterm") String? pmtterm,
      List<ItemDetailDataModel>? details}) {
    return _RequestSaleTransactionDataModel(
      transNo: transNo,
      transType: transType,
      location: location,
      transDt: transDt,
      customer: customer,
      createBy: createBy,
      remark: remark,
      pmttype: pmttype,
      pmtterm: pmtterm,
      details: details,
    );
  }

  RequestSaleTransactionDataModel fromJson(Map<String, Object> json) {
    return RequestSaleTransactionDataModel.fromJson(json);
  }
}

/// @nodoc
const $RequestSaleTransactionDataModel =
    _$RequestSaleTransactionDataModelTearOff();

/// @nodoc
mixin _$RequestSaleTransactionDataModel {
  @JsonKey(name: "trans_no")
  String? get transNo => throw _privateConstructorUsedError;
  @JsonKey(name: "trans_type")
  String? get transType => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "trans_dt")
  String? get transDt => throw _privateConstructorUsedError;
  @JsonKey(name: "customer")
  String? get customer => throw _privateConstructorUsedError;
  @JsonKey(name: "create_by")
  String? get createBy => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String? get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "pmttype")
  String? get pmttype => throw _privateConstructorUsedError;
  @JsonKey(name: "pmtterm")
  String? get pmtterm => throw _privateConstructorUsedError;
  List<ItemDetailDataModel>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestSaleTransactionDataModelCopyWith<RequestSaleTransactionDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSaleTransactionDataModelCopyWith<$Res> {
  factory $RequestSaleTransactionDataModelCopyWith(
          RequestSaleTransactionDataModel value,
          $Res Function(RequestSaleTransactionDataModel) then) =
      _$RequestSaleTransactionDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "trans_no") String? transNo,
      @JsonKey(name: "trans_type") String? transType,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "trans_dt") String? transDt,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "create_by") String? createBy,
      @JsonKey(name: "remark") String? remark,
      @JsonKey(name: "pmttype") String? pmttype,
      @JsonKey(name: "pmtterm") String? pmtterm,
      List<ItemDetailDataModel>? details});
}

/// @nodoc
class _$RequestSaleTransactionDataModelCopyWithImpl<$Res>
    implements $RequestSaleTransactionDataModelCopyWith<$Res> {
  _$RequestSaleTransactionDataModelCopyWithImpl(this._value, this._then);

  final RequestSaleTransactionDataModel _value;
  // ignore: unused_field
  final $Res Function(RequestSaleTransactionDataModel) _then;

  @override
  $Res call({
    Object? transNo = freezed,
    Object? transType = freezed,
    Object? location = freezed,
    Object? transDt = freezed,
    Object? customer = freezed,
    Object? createBy = freezed,
    Object? remark = freezed,
    Object? pmttype = freezed,
    Object? pmtterm = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      transNo: transNo == freezed
          ? _value.transNo
          : transNo // ignore: cast_nullable_to_non_nullable
              as String?,
      transType: transType == freezed
          ? _value.transType
          : transType // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      transDt: transDt == freezed
          ? _value.transDt
          : transDt // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      createBy: createBy == freezed
          ? _value.createBy
          : createBy // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      pmttype: pmttype == freezed
          ? _value.pmttype
          : pmttype // ignore: cast_nullable_to_non_nullable
              as String?,
      pmtterm: pmtterm == freezed
          ? _value.pmtterm
          : pmtterm // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ItemDetailDataModel>?,
    ));
  }
}

/// @nodoc
abstract class _$RequestSaleTransactionDataModelCopyWith<$Res>
    implements $RequestSaleTransactionDataModelCopyWith<$Res> {
  factory _$RequestSaleTransactionDataModelCopyWith(
          _RequestSaleTransactionDataModel value,
          $Res Function(_RequestSaleTransactionDataModel) then) =
      __$RequestSaleTransactionDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "trans_no") String? transNo,
      @JsonKey(name: "trans_type") String? transType,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "trans_dt") String? transDt,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "create_by") String? createBy,
      @JsonKey(name: "remark") String? remark,
      @JsonKey(name: "pmttype") String? pmttype,
      @JsonKey(name: "pmtterm") String? pmtterm,
      List<ItemDetailDataModel>? details});
}

/// @nodoc
class __$RequestSaleTransactionDataModelCopyWithImpl<$Res>
    extends _$RequestSaleTransactionDataModelCopyWithImpl<$Res>
    implements _$RequestSaleTransactionDataModelCopyWith<$Res> {
  __$RequestSaleTransactionDataModelCopyWithImpl(
      _RequestSaleTransactionDataModel _value,
      $Res Function(_RequestSaleTransactionDataModel) _then)
      : super(_value, (v) => _then(v as _RequestSaleTransactionDataModel));

  @override
  _RequestSaleTransactionDataModel get _value =>
      super._value as _RequestSaleTransactionDataModel;

  @override
  $Res call({
    Object? transNo = freezed,
    Object? transType = freezed,
    Object? location = freezed,
    Object? transDt = freezed,
    Object? customer = freezed,
    Object? createBy = freezed,
    Object? remark = freezed,
    Object? pmttype = freezed,
    Object? pmtterm = freezed,
    Object? details = freezed,
  }) {
    return _then(_RequestSaleTransactionDataModel(
      transNo: transNo == freezed
          ? _value.transNo
          : transNo // ignore: cast_nullable_to_non_nullable
              as String?,
      transType: transType == freezed
          ? _value.transType
          : transType // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      transDt: transDt == freezed
          ? _value.transDt
          : transDt // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      createBy: createBy == freezed
          ? _value.createBy
          : createBy // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      pmttype: pmttype == freezed
          ? _value.pmttype
          : pmttype // ignore: cast_nullable_to_non_nullable
              as String?,
      pmtterm: pmtterm == freezed
          ? _value.pmtterm
          : pmtterm // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ItemDetailDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestSaleTransactionDataModel
    implements _RequestSaleTransactionDataModel {
  _$_RequestSaleTransactionDataModel(
      {@JsonKey(name: "trans_no") this.transNo,
      @JsonKey(name: "trans_type") this.transType,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "trans_dt") this.transDt,
      @JsonKey(name: "customer") this.customer,
      @JsonKey(name: "create_by") this.createBy,
      @JsonKey(name: "remark") this.remark,
      @JsonKey(name: "pmttype") this.pmttype,
      @JsonKey(name: "pmtterm") this.pmtterm,
      this.details});

  factory _$_RequestSaleTransactionDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_RequestSaleTransactionDataModelFromJson(json);

  @override
  @JsonKey(name: "trans_no")
  final String? transNo;
  @override
  @JsonKey(name: "trans_type")
  final String? transType;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "trans_dt")
  final String? transDt;
  @override
  @JsonKey(name: "customer")
  final String? customer;
  @override
  @JsonKey(name: "create_by")
  final String? createBy;
  @override
  @JsonKey(name: "remark")
  final String? remark;
  @override
  @JsonKey(name: "pmttype")
  final String? pmttype;
  @override
  @JsonKey(name: "pmtterm")
  final String? pmtterm;
  @override
  final List<ItemDetailDataModel>? details;

  @override
  String toString() {
    return 'RequestSaleTransactionDataModel(transNo: $transNo, transType: $transType, location: $location, transDt: $transDt, customer: $customer, createBy: $createBy, remark: $remark, pmttype: $pmttype, pmtterm: $pmtterm, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSaleTransactionDataModel &&
            (identical(other.transNo, transNo) ||
                const DeepCollectionEquality()
                    .equals(other.transNo, transNo)) &&
            (identical(other.transType, transType) ||
                const DeepCollectionEquality()
                    .equals(other.transType, transType)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.transDt, transDt) ||
                const DeepCollectionEquality()
                    .equals(other.transDt, transDt)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.createBy, createBy) ||
                const DeepCollectionEquality()
                    .equals(other.createBy, createBy)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.pmttype, pmttype) ||
                const DeepCollectionEquality()
                    .equals(other.pmttype, pmttype)) &&
            (identical(other.pmtterm, pmtterm) ||
                const DeepCollectionEquality()
                    .equals(other.pmtterm, pmtterm)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transNo) ^
      const DeepCollectionEquality().hash(transType) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(transDt) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(createBy) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(pmttype) ^
      const DeepCollectionEquality().hash(pmtterm) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$RequestSaleTransactionDataModelCopyWith<_RequestSaleTransactionDataModel>
      get copyWith => __$RequestSaleTransactionDataModelCopyWithImpl<
          _RequestSaleTransactionDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestSaleTransactionDataModelToJson(this);
  }
}

abstract class _RequestSaleTransactionDataModel
    implements RequestSaleTransactionDataModel {
  factory _RequestSaleTransactionDataModel(
      {@JsonKey(name: "trans_no") String? transNo,
      @JsonKey(name: "trans_type") String? transType,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "trans_dt") String? transDt,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "create_by") String? createBy,
      @JsonKey(name: "remark") String? remark,
      @JsonKey(name: "pmttype") String? pmttype,
      @JsonKey(name: "pmtterm") String? pmtterm,
      List<ItemDetailDataModel>? details}) = _$_RequestSaleTransactionDataModel;

  factory _RequestSaleTransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$_RequestSaleTransactionDataModel.fromJson;

  @override
  @JsonKey(name: "trans_no")
  String? get transNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "trans_type")
  String? get transType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "trans_dt")
  String? get transDt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customer")
  String? get customer => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "create_by")
  String? get createBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "remark")
  String? get remark => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pmttype")
  String? get pmttype => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pmtterm")
  String? get pmtterm => throw _privateConstructorUsedError;
  @override
  List<ItemDetailDataModel>? get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestSaleTransactionDataModelCopyWith<_RequestSaleTransactionDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
