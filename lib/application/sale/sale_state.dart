part of 'sale_cubit.dart';

@freezed
abstract class SaleState with _$SaleState {
  const factory SaleState.initial() = _Initial;
  const factory SaleState.isLoading() = _IsLoading;
  const factory SaleState.isError(String error) = _IsError;
  const factory SaleState.onGetAllProducts(List<ProductDataModel> list) =
      _OnGetAllProducts;
  const factory SaleState.onGetCustomerDiscount(List<DiscountDataModel> list) =
      _OnGetCustomerDiscount;

  const factory SaleState.onGetCustomer(
    List<CustomerDataModel>? list,
  ) = _OnGetCustomer;
}
