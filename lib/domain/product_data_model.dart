import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data_model.freezed.dart';
part 'product_data_model.g.dart';

@freezed
class ProductDataModel with _$ProductDataModel {
  factory ProductDataModel({
    @JsonKey(name: 'item_id') String? itemId,
    @JsonKey(name: 'item_code') String? itemCode,
    @JsonKey(name: 'barcode') String? barcode,
    @JsonKey(name: 'item_sku') String? itemSku,
    @JsonKey(name: 'update_date') String? updateDate,
    @JsonKey(name: 'kategori_id') String? kategoriId,
    @JsonKey(name: 'internal_code') String? internalCode,
    @JsonKey(name: 'kategori_code') String? kategoriCode,
    @JsonKey(name: 'kategori') String? kategori,
    @JsonKey(name: 'kat_picture') String? katPicture,
    @JsonKey(name: 'item_name') String? itemName,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'item_price') String? itemPrice,
    @JsonKey(name: 'itm_price_fmt') String? itmPriceFmt,
    @JsonKey(name: 'is_fixed_price') String? isFixedPrice,
    @JsonKey(name: 'qty') String? qty,
    @JsonKey(name: 'unit_code') String? unitCode,
    @JsonKey(name: 'tax_code') String? taxCode,
    @JsonKey(name: 'pic') String? pic,
    @JsonKey(name: 'display_store') String? displayStore,
    @JsonKey(name: 'weight') String? weight,
    @JsonKey(name: 'in_order') String? inOrder,
    @Default(false) @JsonKey(name: 'isChecked') bool? isChecked,
    @Default(0) @JsonKey(name: 'total_buy') int totalBuy,
  }) = _ProductDataModel;

  factory ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDataModelFromJson(json);
}
