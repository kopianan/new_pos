import 'package:get/get.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/product_data_model.dart';

class SaleController extends GetxController {
  RxList<CustomerDataModel> _userList = <CustomerDataModel>[].obs;
  RxList<ProductDataModel> _productList = <ProductDataModel>[].obs;
  final _selectedCustomer = CustomerDataModel().obs;

  void setProductList(List<ProductDataModel> list) {
    this._productList.assignAll(list);
  }

  List<ProductDataModel> get getProductList => this._productList;

  void setCustomerList(List<CustomerDataModel> list) {
    this._userList.assignAll(list);
  }

  List<CustomerDataModel> get getCustomerList => this._userList;

  void setSelectedCustomer(CustomerDataModel data) {
    _selectedCustomer.value = data;
  }

  CustomerDataModel get getSelectedCustomer => this._selectedCustomer.value;
}
