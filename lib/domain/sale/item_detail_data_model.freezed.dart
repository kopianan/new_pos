// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_detail_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDetailDataModel _$ItemDetailDataModelFromJson(Map<String, dynamic> json) {
  return _ItemDetailDataModel.fromJson(json);
}

/// @nodoc
class _$ItemDetailDataModelTearOff {
  const _$ItemDetailDataModelTearOff();

  _ItemDetailDataModel call(
      {@JsonKey(name: "item_code") String? itemCode,
      @JsonKey(name: "item_id") String? itemId,
      @JsonKey(name: "item_name") required String itemName,
      @JsonKey(name: "qty") String? qty,
      @JsonKey(name: "unit") String? unit,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "tax") String? tax,
      @JsonKey(name: "discount") String? discount}) {
    return _ItemDetailDataModel(
      itemCode: itemCode,
      itemId: itemId,
      itemName: itemName,
      qty: qty,
      unit: unit,
      price: price,
      tax: tax,
      discount: discount,
    );
  }

  ItemDetailDataModel fromJson(Map<String, Object> json) {
    return ItemDetailDataModel.fromJson(json);
  }
}

/// @nodoc
const $ItemDetailDataModel = _$ItemDetailDataModelTearOff();

/// @nodoc
mixin _$ItemDetailDataModel {
  @JsonKey(name: "item_code")
  String? get itemCode => throw _privateConstructorUsedError;
  @JsonKey(name: "item_id")
  String? get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: "item_name")
  String get itemName => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  String? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "tax")
  String? get tax => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  String? get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDetailDataModelCopyWith<ItemDetailDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailDataModelCopyWith<$Res> {
  factory $ItemDetailDataModelCopyWith(
          ItemDetailDataModel value, $Res Function(ItemDetailDataModel) then) =
      _$ItemDetailDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "item_code") String? itemCode,
      @JsonKey(name: "item_id") String? itemId,
      @JsonKey(name: "item_name") String itemName,
      @JsonKey(name: "qty") String? qty,
      @JsonKey(name: "unit") String? unit,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "tax") String? tax,
      @JsonKey(name: "discount") String? discount});
}

/// @nodoc
class _$ItemDetailDataModelCopyWithImpl<$Res>
    implements $ItemDetailDataModelCopyWith<$Res> {
  _$ItemDetailDataModelCopyWithImpl(this._value, this._then);

  final ItemDetailDataModel _value;
  // ignore: unused_field
  final $Res Function(ItemDetailDataModel) _then;

  @override
  $Res call({
    Object? itemCode = freezed,
    Object? itemId = freezed,
    Object? itemName = freezed,
    Object? qty = freezed,
    Object? unit = freezed,
    Object? price = freezed,
    Object? tax = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      itemCode: itemCode == freezed
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ItemDetailDataModelCopyWith<$Res>
    implements $ItemDetailDataModelCopyWith<$Res> {
  factory _$ItemDetailDataModelCopyWith(_ItemDetailDataModel value,
          $Res Function(_ItemDetailDataModel) then) =
      __$ItemDetailDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "item_code") String? itemCode,
      @JsonKey(name: "item_id") String? itemId,
      @JsonKey(name: "item_name") String itemName,
      @JsonKey(name: "qty") String? qty,
      @JsonKey(name: "unit") String? unit,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "tax") String? tax,
      @JsonKey(name: "discount") String? discount});
}

/// @nodoc
class __$ItemDetailDataModelCopyWithImpl<$Res>
    extends _$ItemDetailDataModelCopyWithImpl<$Res>
    implements _$ItemDetailDataModelCopyWith<$Res> {
  __$ItemDetailDataModelCopyWithImpl(
      _ItemDetailDataModel _value, $Res Function(_ItemDetailDataModel) _then)
      : super(_value, (v) => _then(v as _ItemDetailDataModel));

  @override
  _ItemDetailDataModel get _value => super._value as _ItemDetailDataModel;

  @override
  $Res call({
    Object? itemCode = freezed,
    Object? itemId = freezed,
    Object? itemName = freezed,
    Object? qty = freezed,
    Object? unit = freezed,
    Object? price = freezed,
    Object? tax = freezed,
    Object? discount = freezed,
  }) {
    return _then(_ItemDetailDataModel(
      itemCode: itemCode == freezed
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemDetailDataModel implements _ItemDetailDataModel {
  _$_ItemDetailDataModel(
      {@JsonKey(name: "item_code") this.itemCode,
      @JsonKey(name: "item_id") this.itemId,
      @JsonKey(name: "item_name") required this.itemName,
      @JsonKey(name: "qty") this.qty,
      @JsonKey(name: "unit") this.unit,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "tax") this.tax,
      @JsonKey(name: "discount") this.discount});

  factory _$_ItemDetailDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDetailDataModelFromJson(json);

  @override
  @JsonKey(name: "item_code")
  final String? itemCode;
  @override
  @JsonKey(name: "item_id")
  final String? itemId;
  @override
  @JsonKey(name: "item_name")
  final String itemName;
  @override
  @JsonKey(name: "qty")
  final String? qty;
  @override
  @JsonKey(name: "unit")
  final String? unit;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "tax")
  final String? tax;
  @override
  @JsonKey(name: "discount")
  final String? discount;

  @override
  String toString() {
    return 'ItemDetailDataModel(itemCode: $itemCode, itemId: $itemId, itemName: $itemName, qty: $qty, unit: $unit, price: $price, tax: $tax, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemDetailDataModel &&
            (identical(other.itemCode, itemCode) ||
                const DeepCollectionEquality()
                    .equals(other.itemCode, itemCode)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.tax, tax) ||
                const DeepCollectionEquality().equals(other.tax, tax)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemCode) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(tax) ^
      const DeepCollectionEquality().hash(discount);

  @JsonKey(ignore: true)
  @override
  _$ItemDetailDataModelCopyWith<_ItemDetailDataModel> get copyWith =>
      __$ItemDetailDataModelCopyWithImpl<_ItemDetailDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDetailDataModelToJson(this);
  }
}

abstract class _ItemDetailDataModel implements ItemDetailDataModel {
  factory _ItemDetailDataModel(
      {@JsonKey(name: "item_code") String? itemCode,
      @JsonKey(name: "item_id") String? itemId,
      @JsonKey(name: "item_name") required String itemName,
      @JsonKey(name: "qty") String? qty,
      @JsonKey(name: "unit") String? unit,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "tax") String? tax,
      @JsonKey(name: "discount") String? discount}) = _$_ItemDetailDataModel;

  factory _ItemDetailDataModel.fromJson(Map<String, dynamic> json) =
      _$_ItemDetailDataModel.fromJson;

  @override
  @JsonKey(name: "item_code")
  String? get itemCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_id")
  String? get itemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_name")
  String get itemName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "qty")
  String? get qty => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit")
  String? get unit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "tax")
  String? get tax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "discount")
  String? get discount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemDetailDataModelCopyWith<_ItemDetailDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
