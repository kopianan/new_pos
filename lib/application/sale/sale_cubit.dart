import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/product_data_model.dart';
import 'package:pos/domain/sale/i_sale.dart';

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
}
