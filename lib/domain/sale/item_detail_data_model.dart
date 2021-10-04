import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_detail_data_model.freezed.dart';
part 'item_detail_data_model.g.dart';

@freezed
class ItemDetailDataModel with _$ItemDetailDataModel {
  factory ItemDetailDataModel({
    @JsonKey(name: "item_code") String? itemCode,
    @JsonKey(name: "item_id") String? itemId,
    @JsonKey(name: "qty") String? qty,
    @JsonKey(name: "unit") String? unit,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "tax") String? tax,
    @JsonKey(name: "discount") String? discount,
  }) = _ItemDetailDataModel;

  factory ItemDetailDataModel.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailDataModelFromJson(json);
}
