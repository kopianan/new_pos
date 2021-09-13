import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_data_model.freezed.dart';
part 'customer_data_model.g.dart';

@freezed
class CustomerDataModel with _$CustomerDataModel {
  factory CustomerDataModel({
    @Default("") @JsonKey(name: '_id') String? sId,
    @Default("") @JsonKey(name: 'customer_id') String? customerId,
    @Default("") @JsonKey(name: 'customer_code') String? customerCode,
    @Default("") @JsonKey(name: 'customer_name') String? customerName,
    @Default("")
    @JsonKey(name: 'default_location_id')
        String? defaultLocationId,
    @Default("") @JsonKey(name: 'phone1') String? phone1,
    @Default("") @JsonKey(name: 'address') String? address,
    @Default("") @JsonKey(name: 'is_default') String? isDefault,
    @Default("") @JsonKey(name: 'code') String? code,
    @Default("") @JsonKey(name: 'point_reward') String? pointReward,
    @Default("") @JsonKey(name: 'default_type_id') String? defaultTypeId,
    @Default("") @JsonKey(name: 'default_term_id') String? defaultTermId,
  }) = _CustomerDataModel;

  factory CustomerDataModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataModelFromJson(json);
}
