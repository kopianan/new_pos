import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_data_model.freezed.dart';
part 'discount_data_model.g.dart';

@freezed
class DiscountDataModel with _$DiscountDataModel {
  factory DiscountDataModel({
    @JsonKey(name: "customer_code") String? customerCode,
    @JsonKey(name: "customer_name") String? customerName,
    @JsonKey(name: "customer_type_id") String? customertypeId,
    @JsonKey(name: "event_discount") String? eventDiscount,
    @JsonKey(name: "kategori_id") String? kategoriId,
    @JsonKey(name: "event_end_date") String? eventEndDate,
  }) = _DiscountDataModel;

  factory DiscountDataModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountDataModelFromJson(json);
}
