import 'package:collection/src/iterable_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/product_data_model.dart';

class SaleController extends GetxController {
  RxList<CustomerDataModel> _userList = <CustomerDataModel>[].obs;
  RxList<ProductDataModel> _productList = <ProductDataModel>[].obs;
  final _selectedCustomer = CustomerDataModel().obs;
  RxList<ProductDataModel> _selectedListItem = <ProductDataModel>[].obs;
  RxList<ProductDataModel> _cartListItem = <ProductDataModel>[].obs;
  RxDouble _grandTotal = 0.0.obs;

  void setProductList(List<ProductDataModel> list) {
    this._productList.assignAll(list);
  }

  List<ProductDataModel> get getProductList => this._productList;
  //CART LIST ITEM

  Either<String, Unit> addBuyQty(ProductDataModel item) {
    //find data
    var _currItem =
        _cartListItem.firstWhere((element) => element.itemId == item.itemId);
    //Find index
    int _index = _cartListItem.indexOf(_currItem);

    if ((_currItem.totalBuy + 1) > double.parse(_currItem.qty!)) {
      return left("Stock tidak cukup");
    } else {
      //Add quantity
      var _updatedData = _currItem.copyWith(totalBuy: _currItem.totalBuy + 1);
      //Update quantity
      _cartListItem.removeAt(_index);
      _cartListItem.insert(_index, _updatedData);

      return right(unit);
    }
  }

  Either<String, Unit> decreaseBuyQty(ProductDataModel item) {
    //find data
    var _currItem =
        _cartListItem.firstWhere((element) => element.itemId == item.itemId);
    //Find index
    int _index = _cartListItem.indexOf(_currItem);

    if ((_currItem.totalBuy - 1) < 1) {
      return left("Data Tidak boleh kosong");
    } else {
      //Add quantity
      var _updatedData = _currItem.copyWith(totalBuy: _currItem.totalBuy - 1);
      //Update quantity
      _cartListItem.removeAt(_index);
      _cartListItem.insert(_index, _updatedData);

      return right(unit);
    }
  }

  String calculateGrandTotal() {
    _grandTotal.value = 0;
    if (_cartListItem.length == 0) {
      _grandTotal.value = 0;
    }
    _cartListItem.forEach(
      (element) {
        _grandTotal.value +=
            element.totalBuy * double.parse(element.itemPrice!);
      },
    );
    var _formatted = NumberFormat.currency(symbol: "Rp.", decimalDigits: 0)
        .format(_grandTotal.value);
    return _formatted;
  }

  void addItemToCart(ProductDataModel item) {
    _cartListItem.add(item);
  }

  void removeItemFromCart(ProductDataModel item) {
    _cartListItem.removeWhere((element) => element.itemCode == item.itemCode);
  }

  double get getGrandTotal => this._grandTotal.value;
  List<ProductDataModel> get getCartList => this._cartListItem;

  //SELECTED ITEM
  void setSelectedList(List<ProductDataModel> list) {
    this._selectedListItem.assignAll(list);
  }

  void updateSelectedList(ProductDataModel data, bool isChecked) {
    var _selected =
        this._selectedListItem.firstWhere((element) => element == data);
    var _new = _selected.copyWith(isChecked: isChecked);
    int index = _selectedListItem.indexOf(data);

    _selectedListItem.removeAt(index);
    _selectedListItem.insert(index, _new);
  }

  void onSaveSelectList() {
    var _fakeData = _productList;
    _selectedListItem.forEach((element) {
      //get item code from selected item
      var _itemId = element.itemId;
      //get original data from full LIST
      var _lastElement =
          _fakeData.firstWhere((realData) => realData.itemId == _itemId);
      var _index = _fakeData.indexOf(_lastElement);

      _fakeData.removeAt(_index);
      _fakeData.insert(_index, element);
      //add checked item to cart List
    });

    _selectedListItem.forEach((element) {
      if (element.isChecked!) {
        //check exist data on cart
        // _cartListItem.add(element.copyWith(totalBuy: 1));
        try {
          var _item =
              _cartListItem.firstWhere((data) => data.itemId == element.itemId);
          addBuyQty(_item);
        } catch (e) {
          _cartListItem.add(element.copyWith(totalBuy: 1));
        }
      }
    });

    _selectedListItem.clear();
  }

  List<ProductDataModel> get getSElectedList => this._selectedListItem;

  void setCustomerList(List<CustomerDataModel> list) {
    this._userList.assignAll(list);
  }

  List<CustomerDataModel> get getCustomerList => this._userList;

  void setSelectedCustomer(CustomerDataModel data) {
    _selectedCustomer.value = data;
  }

  CustomerDataModel get getSelectedCustomer => this._selectedCustomer.value;
}
