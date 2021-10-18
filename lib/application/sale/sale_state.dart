part of 'sale_cubit.dart';

@freezed
class SaleState with _$SaleState {
  const factory SaleState.initial() = _Initial;
  const factory SaleState.isLoading() = _IsLoading;
  const factory SaleState.isLoadingDiscount() = _IsLoadingDiscount;
  const factory SaleState.isError(String error) = _IsError;
  const factory SaleState.onGetAllProducts(List<ProductDataModel> list) =
      _OnGetAllProducts;
  const factory SaleState.onGetSaleDetail(String id) = _OnGetSaleDetail;
  const factory SaleState.onGetCustomerDiscount(List<DiscountDataModel> list) =
      _OnGetCustomerDiscount;

  const factory SaleState.onGetCustomer(
    List<CustomerDataModel>? list,
  ) = _OnGetCustomer;

  const factory SaleState.onCreateTransactionSuccess(String message) =
      _OnCreateTransactionSuccess;
  const factory SaleState.onConfirmPaymentSuccess(String saleData) =
      _OnConfirmPaymentSuccess;
}
