import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/sale/item_detail_data_model.dart';

part 'request_sale_transaction_data_model.freezed.dart';
part 'request_sale_transaction_data_model.g.dart';

@freezed
class RequestSaleTransactionDataModel with _$RequestSaleTransactionDataModel {
  factory RequestSaleTransactionDataModel({
    @JsonKey(name: "trans_no") String? transNo,
    @JsonKey(name: "trans_type") String? transType,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "trans_dt") String? transDt,
    @JsonKey(name: "customer") String? customer,
    @JsonKey(name: "create_by") String? createBy,
    @JsonKey(name: "remark") String? remark,
    @JsonKey(name: "pmttype") String? pmttype,
    @JsonKey(name: "pmtterm") String? pmtterm,
    List<ItemDetailDataModel>? details,
  }) = _RequestSaleTransactionDataModel;

  factory RequestSaleTransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$RequestSaleTransactionDataModelFromJson(json);
}
