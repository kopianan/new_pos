import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_data_model.freezed.dart';
part 'transaction_data_model.g.dart';

@freezed
class TransactionDataModel with _$TransactionDataModel {
  factory TransactionDataModel() = _TransactionDataModel;

  factory TransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataModelFromJson(json);
}
