// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_detail_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDetailDataModel _$$_ItemDetailDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItemDetailDataModel(
      itemCode: json['item_code'] as String?,
      itemId: json['item_id'] as String?,
      qty: json['qty'] as String?,
      unit: json['unit'] as String?,
      price: json['price'] as String?,
      tax: json['tax'] as String?,
      discount: json['discount'] as String?,
    );

Map<String, dynamic> _$$_ItemDetailDataModelToJson(
        _$_ItemDetailDataModel instance) =>
    <String, dynamic>{
      'item_code': instance.itemCode,
      'item_id': instance.itemId,
      'qty': instance.qty,
      'unit': instance.unit,
      'price': instance.price,
      'tax': instance.tax,
      'discount': instance.discount,
    };
