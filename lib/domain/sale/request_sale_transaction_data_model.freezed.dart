// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_sale_transaction_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestSaleTransactionDataModel _$RequestSaleTransactionDataModelFromJson(
    Map<String, dynamic> json) {
  return _RequestSaleTransactionDataModel.fromJson(json);
}

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
abstract class _$$_RequestSaleTransactionDataModelCopyWith<$Res>
    implements $RequestSaleTransactionDataModelCopyWith<$Res> {
  factory _$$_RequestSaleTransactionDataModelCopyWith(
          _$_RequestSaleTransactionDataModel value,
          $Res Function(_$_RequestSaleTransactionDataModel) then) =
      __$$_RequestSaleTransactionDataModelCopyWithImpl<$Res>;
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
class __$$_RequestSaleTransactionDataModelCopyWithImpl<$Res>
    extends _$RequestSaleTransactionDataModelCopyWithImpl<$Res>
    implements _$$_RequestSaleTransactionDataModelCopyWith<$Res> {
  __$$_RequestSaleTransactionDataModelCopyWithImpl(
      _$_RequestSaleTransactionDataModel _value,
      $Res Function(_$_RequestSaleTransactionDataModel) _then)
      : super(_value, (v) => _then(v as _$_RequestSaleTransactionDataModel));

  @override
  _$_RequestSaleTransactionDataModel get _value =>
      super._value as _$_RequestSaleTransactionDataModel;

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
    return _then(_$_RequestSaleTransactionDataModel(
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
          ? _value._details
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
      final List<ItemDetailDataModel>? details})
      : _details = details;

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
  final List<ItemDetailDataModel>? _details;
  @override
  List<ItemDetailDataModel>? get details {
    final value = _details;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestSaleTransactionDataModel(transNo: $transNo, transType: $transType, location: $location, transDt: $transDt, customer: $customer, createBy: $createBy, remark: $remark, pmttype: $pmttype, pmtterm: $pmtterm, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestSaleTransactionDataModel &&
            const DeepCollectionEquality().equals(other.transNo, transNo) &&
            const DeepCollectionEquality().equals(other.transType, transType) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.transDt, transDt) &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality().equals(other.createBy, createBy) &&
            const DeepCollectionEquality().equals(other.remark, remark) &&
            const DeepCollectionEquality().equals(other.pmttype, pmttype) &&
            const DeepCollectionEquality().equals(other.pmtterm, pmtterm) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transNo),
      const DeepCollectionEquality().hash(transType),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(transDt),
      const DeepCollectionEquality().hash(customer),
      const DeepCollectionEquality().hash(createBy),
      const DeepCollectionEquality().hash(remark),
      const DeepCollectionEquality().hash(pmttype),
      const DeepCollectionEquality().hash(pmtterm),
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  _$$_RequestSaleTransactionDataModelCopyWith<
          _$_RequestSaleTransactionDataModel>
      get copyWith => __$$_RequestSaleTransactionDataModelCopyWithImpl<
          _$_RequestSaleTransactionDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestSaleTransactionDataModelToJson(
      this,
    );
  }
}

abstract class _RequestSaleTransactionDataModel
    implements RequestSaleTransactionDataModel {
  factory _RequestSaleTransactionDataModel(
          {@JsonKey(name: "trans_no") final String? transNo,
          @JsonKey(name: "trans_type") final String? transType,
          @JsonKey(name: "location") final String? location,
          @JsonKey(name: "trans_dt") final String? transDt,
          @JsonKey(name: "customer") final String? customer,
          @JsonKey(name: "create_by") final String? createBy,
          @JsonKey(name: "remark") final String? remark,
          @JsonKey(name: "pmttype") final String? pmttype,
          @JsonKey(name: "pmtterm") final String? pmtterm,
          final List<ItemDetailDataModel>? details}) =
      _$_RequestSaleTransactionDataModel;

  factory _RequestSaleTransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$_RequestSaleTransactionDataModel.fromJson;

  @override
  @JsonKey(name: "trans_no")
  String? get transNo;
  @override
  @JsonKey(name: "trans_type")
  String? get transType;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "trans_dt")
  String? get transDt;
  @override
  @JsonKey(name: "customer")
  String? get customer;
  @override
  @JsonKey(name: "create_by")
  String? get createBy;
  @override
  @JsonKey(name: "remark")
  String? get remark;
  @override
  @JsonKey(name: "pmttype")
  String? get pmttype;
  @override
  @JsonKey(name: "pmtterm")
  String? get pmtterm;
  @override
  List<ItemDetailDataModel>? get details;
  @override
  @JsonKey(ignore: true)
  _$$_RequestSaleTransactionDataModelCopyWith<
          _$_RequestSaleTransactionDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
