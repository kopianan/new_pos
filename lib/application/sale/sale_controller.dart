import 'package:collection/src/iterable_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pos/application/sale/sale_function.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/discount/discount_data_model.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/domain/payment_term.dart';
import 'package:pos/domain/product_data_model.dart';
import 'package:pos/domain/sale/item_detail_data_model.dart';
import 'package:pos/domain/sale/request_sale_transaction_data_model.dart';
import 'package:pos/domain/sale_transaction_data_model.dart';
import 'package:pos/infrastructure/function/custom_data.dart';
import 'package:pos/infrastructure/function/custom_date.dart';
import 'package:pos/infrastructure/storage/storage.dart';

class SaleController extends GetxController {
  RxList<CustomerDataModel> _userList = <CustomerDataModel>[].obs;
  RxList<ProductDataModel> _productList = <ProductDataModel>[].obs;
  final _selectedCustomer = CustomerDataModel().obs;
  RxList<ProductDataModel> _selectedListItem = <ProductDataModel>[].obs;
  RxList<ProductDataModel> _cartListItem = <ProductDataModel>[].obs;
  Rx<LocationDataModel> _selectedLocation = LocationDataModel().obs;
  RxDouble _grandTotal = 0.0.obs;
  RxString _transactionNumber = "".obs;
  RxBool _isEditable = false.obs;
  Rx<DateTime> _dateTime = DateTime.now().obs;

  Rx<PaymentTerm> _paymentTerm = PaymentTerm().obs;
  Rx<PaymentTerm> _paymentType = PaymentTerm().obs;
  RxList<DiscountDataModel> _customrDiscountList = <DiscountDataModel>[].obs;

  //SETUP EMPTY SALE DATA

  void setupNewData() {
    _isEditable.value = false;
    setTransactionNumber(CustomData().generateTransactionId());
    setSelectedLocation(PrefStorage().getUserLogin());
    setTransactionDate(DateTime.now());
    setSelectedCustomer(CustomerDataModel());
    setPaymentTerm(PaymentTerm());
    setPaymentType(PaymentTerm());
    setCartList([]);
  }

  //SETUP LOAD DATA
  void loadDataFromStorage(SaleTransactionDataModel trans) {
    _isEditable.value = true;
    setTransactionNumber(trans.transactionNumber);
    setSelectedLocation(trans.selectedLocation);
    setTransactionDate(trans.date);
    setSelectedCustomer(trans.selectedCustomer);
    setCartList(trans.listProduct);
    setPaymentTerm(trans.paymentTerm);
    setPaymentType(trans.paymentType);
  }

  //PAYMENT TYPE
  void setPaymentType(PaymentTerm data) {
    this._paymentType.value = data;
  }

  PaymentTerm get getPaymentType => this._paymentType.value;

  //PAYMENT TERM
  void setPaymentTerm(PaymentTerm data) {
    this._paymentTerm.value = data;
  }

  PaymentTerm get getPaymentTerm => this._paymentTerm.value;

  //DATE
  void setTransactionDate(DateTime date) {
    this._dateTime.value = date;
  }

  DateTime get getTransactionDate => this._dateTime.value;

  //LOCATION
  void setSelectedLocation(LocationDataModel locationDataModel) {
    this._selectedLocation.value = locationDataModel;
  }

  LocationDataModel get getSelectedLocation => this._selectedLocation.value;

  //TRANSACTION NUMBER
  void setTransactionNumber(String data) {
    this._transactionNumber.value = data;
  }

  String get getTransactionNumber => this._transactionNumber.value;

  void setProductList(List<ProductDataModel> list) {
    this._productList.assignAll(list);
  }

  List<ProductDataModel> get getProductList => this._productList;

  //CART LIST ITEM
  void setCartList(List<ProductDataModel> list) {
    this._cartListItem.assignAll(list);
  }

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
    setPaymentTerm(SaleFunction.customerPaymentTerm(data));
    setPaymentType(SaleFunction.customerPaymentType(data));
  }

  CustomerDataModel get getSelectedCustomer => this._selectedCustomer.value;

//void process request

  void convertData() {
    RequestSaleTransactionDataModel _saleTransaction;
    List<ItemDetailDataModel> _itemList = [];

    _cartListItem.forEach((element) {
      var _singleItem = ItemDetailDataModel(
          discount: "",
          qty: element.totalBuy.toStringAsFixed(0),
          itemCode: element.itemCode,
          itemId: element.itemId,
          price: element.itemPrice,
          tax: "",
          unit: "PCS");
      _itemList.add(_singleItem);
    });

    _saleTransaction = RequestSaleTransactionDataModel(
      transNo: getTransactionNumber,
      location: getSelectedLocation.locationCode,
      transDt: CustomDate.convertDateSales(DateTime.now()),
      customer: getSelectedCustomer.customerId,
      createBy: PrefStorage().getUserLogin().userName,
      remark: "remark",
      pmtterm: getPaymentTerm.code,
      pmttype: getPaymentType.code,
      details: _itemList,
      transType: PrefStorage().getTransactionType(),
    );
    print(_saleTransaction);
  }
}
