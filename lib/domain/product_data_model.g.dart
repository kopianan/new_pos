// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDataModel _$$_ProductDataModelFromJson(Map<String, dynamic> json) =>
    _$_ProductDataModel(
      itemId: json['item_id'] as String?,
      itemCode: json['item_code'] as String?,
      barcode: json['barcode'] as String?,
      itemSku: json['item_sku'] as String?,
      updateDate: json['update_date'] as String?,
      kategoriId: json['kategori_id'] as String?,
      customerTypeId: json['customer_type_id'] as String?,
      internalCode: json['internal_code'] as String?,
      kategoriCode: json['kategori_code'] as String?,
      kategori: json['kategori'] as String?,
      katPicture: json['kat_picture'] as String?,
      itemName: json['item_name'] as String?,
      description: json['description'] as String?,
      itemPrice: json['item_price'] as String?,
      newPrice: json['new_price'] as String?,
      itmPriceFmt: json['itm_price_fmt'] as String?,
      isFixedPrice: json['is_fixed_price'] as String?,
      qty: json['qty'] as String?,
      unitCode: json['unit_code'] as String?,
      taxCode: json['tax_code'] as String?,
      pic: json['pic'] as String?,
      displayStore: json['display_store'] as String?,
      weight: json['weight'] as String?,
      inOrder: json['in_order'] as String?,
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      isPercentage: json['is_percentage'] as bool? ?? true,
      isChecked: json['isChecked'] as bool? ?? false,
      totalBuy: json['total_buy'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProductDataModelToJson(_$_ProductDataModel instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'item_code': instance.itemCode,
      'barcode': instance.barcode,
      'item_sku': instance.itemSku,
      'update_date': instance.updateDate,
      'kategori_id': instance.kategoriId,
      'customer_type_id': instance.customerTypeId,
      'internal_code': instance.internalCode,
      'kategori_code': instance.kategoriCode,
      'kategori': instance.kategori,
      'kat_picture': instance.katPicture,
      'item_name': instance.itemName,
      'description': instance.description,
      'item_price': instance.itemPrice,
      'new_price': instance.newPrice,
      'itm_price_fmt': instance.itmPriceFmt,
      'is_fixed_price': instance.isFixedPrice,
      'qty': instance.qty,
      'unit_code': instance.unitCode,
      'tax_code': instance.taxCode,
      'pic': instance.pic,
      'display_store': instance.displayStore,
      'weight': instance.weight,
      'in_order': instance.inOrder,
      'discount': instance.discount,
      'is_percentage': instance.isPercentage,
      'isChecked': instance.isChecked,
      'total_buy': instance.totalBuy,
    };
