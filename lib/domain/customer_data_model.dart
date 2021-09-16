import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_data_model.freezed.dart';
part 'customer_data_model.g.dart';

@freezed
class CustomerDataModel with _$CustomerDataModel {
  factory CustomerDataModel({
    @Default("") @JsonKey(name: '_id', includeIfNull: true) String? sId,
    @Default("")
    @JsonKey(name: 'customer_id', includeIfNull: true)
        String? customerId,
    @Default("")
    @JsonKey(name: 'customer_code', includeIfNull: true)
        String? customerCode,
    @Default("")
    @JsonKey(name: 'customer_name', includeIfNull: true)
        String? customerName,
    @Default("")
    @JsonKey(name: 'default_location_id', includeIfNull: true)
        String? defaultLocationId,
    @Default("") @JsonKey(name: 'phone1', includeIfNull: true) String? phone1,
    @Default("") @JsonKey(name: 'address', includeIfNull: true) String? address,
    @Default("")
    @JsonKey(name: 'is_default', includeIfNull: true)
        String? isDefault,
    @Default("") @JsonKey(name: 'code', includeIfNull: true) String? code,
    @Default("")
    @JsonKey(name: 'point_reward', includeIfNull: true)
        String? pointReward,
    @Default("")
    @JsonKey(name: 'default_type_id', includeIfNull: true)
        String? defaultTypeId,
    @Default("")
    @JsonKey(name: 'default_term_id', includeIfNull: true)
        String? defaultTermId,
  }) = _CustomerDataModel;

  factory CustomerDataModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataModelFromJson(json);
}
