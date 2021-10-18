import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/discount/discount_data_model.dart';
import 'package:pos/domain/product_data_model.dart';
import 'package:pos/domain/sale/i_sale.dart';
import 'package:pos/domain/sale/request_sale_transaction_data_model.dart';
import 'package:pos/domain/sale/sales_order_data_model.dart';

part 'sale_state.dart';
part 'sale_cubit.freezed.dart';

@injectable
class SaleCubit extends Cubit<SaleState> {
  SaleCubit(this.iSale) : super(const SaleState.initial());
  final ISale iSale;
  void getAllProduct() async {
    emit(const SaleState.isLoading());
    final _data = await iSale.getAllProduct();
    _data.fold(
      (l) => emit(SaleState.isError(l.toString())),
      (r) {
        emit(SaleState.onGetAllProducts(r));
        getAllCustomer();
      },
    );
  }

  void getAllCustomer() async {
    emit(const SaleState.isLoading());
    final _data = await iSale.getAllCustomer();
    _data.fold(
      (l) => emit(SaleState.isError(l.toString())),
      (r) => emit(SaleState.onGetCustomer(r)),
    );
  }

  void getSaleOrderId(String transNo) async {
    emit(const SaleState.isLoading());
    final _data = await iSale.getSalesOrderId(transNo);
    _data.fold(
      (l) => emit(SaleState.isError(l.toString())),
      (r) => emit(SaleState.onGetSaleDetail(r)),
    );
  }

  void getCustomerDiscount(CustomerDataModel customerDataModel) async {
    emit(const SaleState.isLoadingDiscount());
    try {
      final _data = await iSale.getCustomerDiscount(customerDataModel);

      _data.fold(
        (l) => emit(SaleState.isError(l.toString())),
        (r) => emit(SaleState.onGetCustomerDiscount(r)),
      );
    } catch (e) {
      emit(SaleState.isError(e.toString()));
    }
  }

  void makePayment(dynamic sale, RequestSaleTransactionDataModel data) async {
    emit(const SaleState.isLoadingDiscount());
    try {
      final _data = await iSale.makeTransaction(data, sale);

      _data.fold(
        (l) => emit(SaleState.isError(l.toString())),
        (r) => emit(SaleState.onCreateTransactionSuccess(r)),
      );
    } catch (e) {
      emit(SaleState.isError(e.toString()));
    }
  }

  void confirmPayment(String transactionNumber) async {
    emit(const SaleState.isLoadingDiscount());
    try {
      final _data = await iSale.confirmPayment(transactionNumber);

      _data.fold(
        (l) => emit(SaleState.isError(l.toString())),
        (r) => emit(SaleState.onConfirmPaymentSuccess(r)),
      );
    } catch (e) {
      emit(SaleState.isError(e.toString()));
    }
  }
}
