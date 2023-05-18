import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_function.dart';
import 'package:pos/config/constants_data.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/discount/discount_data_model.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/domain/payment_term.dart';
import 'package:pos/domain/product_data_model.dart';
import 'package:pos/domain/sale/item_detail_data_model.dart';
import 'package:pos/domain/sale/payment_type.dart';
import 'package:pos/domain/sale/request_sale_transaction_data_model.dart';
import 'package:pos/domain/sale_transaction_data_model.dart';
import 'package:pos/infrastructure/function/custom_data.dart';
import 'package:pos/infrastructure/function/custom_date.dart';
import 'package:pos/infrastructure/function/global_function.dart';
import 'package:pos/infrastructure/storage/storage.dart';

class SaleController extends GetxController {
  final _remark = "".obs;
  RxList<CustomerDataModel> _userList = <CustomerDataModel>[].obs;
  RxList<ProductDataModel> _productList = <ProductDataModel>[].obs;
  final _selectedCustomer = CustomerDataModel().obs;
  RxList<ProductDataModel> _selectedListItem = <ProductDataModel>[].obs;
  RxList<ProductDataModel> _cartListItem = <ProductDataModel>[].obs;
  Rx<LocationDataModel> _selectedLocation = LocationDataModel().obs;
  RxDouble _grandTotal = 0.0.obs;
  RxDouble _grandDiscount = 0.0.obs;
  RxString _transactionNumber = "".obs;
  RxBool _isEditable = false.obs;
  Rx<DateTime> _dateTime = DateTime.now().obs;
  Rx<RequestSaleTransactionDataModel> _saleDataModel =
      RequestSaleTransactionDataModel().obs;
  Rx<PaymentTerm> _paymentTerm = PaymentTerm().obs;
  Rx<PaymentType> _paymentType = PaymentType().obs;
  RxList<DiscountDataModel> _customrDiscountList = <DiscountDataModel>[].obs;
  RxString _saleStatus = describeEnum(TransStatus.PROCCESS).obs;
  RxBool _buyUnit = false.obs;

  ///Is max unit artinya unit yang dibeli dalam bentuk dus, lusin dll
  void setBuyUnit(bool isMaxUnit) {
    _buyUnit.value = isMaxUnit;
  }

  bool get getBuyUnit => _buyUnit.value;

  final _customPaymentTerm = 'cash'.obs;
  void setCustomPayment(String status) {
    _customPaymentTerm.value = status;
  }

  String get getCustompayment => _customPaymentTerm.value;

  //SETUP EMPTY SALE DATA
  PrefStorage _box = PrefStorage();
  void setRemark(String remark) {
    _remark.value = remark;
  }

  String get getRemark => _remark.value;

  void setupNewData() {
    _isEditable.value = false;
    setTransactionNumber(CustomData().generateTransactionId());
    setSelectedLocation(PrefStorage().getUserLogin());
    setTransactionDate(DateTime.now());
    setSelectedCustomer(CustomerDataModel());
    setCartList([]);
    setPaymentTerm(PaymentTerm());
    setPaymentType(PaymentType());
    setSaleStatus(describeEnum(TransStatus.PROCCESS));
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
    setSaleStatus(trans.status);
  }

  void setSaleStatus(String status) {
    this._saleStatus.value = status;
  }

  String get getSetStatus => this._saleStatus.value;
  //PAYMENT TYPEf
  void setPaymentType(PaymentType data) {
    this._paymentType.value = data;
  }

  PaymentType get getPaymentType => this._paymentType.value;

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

  //DISCOUNT LIST
  void setCustomerDiscountList(List<DiscountDataModel> discList) {
    this._customrDiscountList.assignAll(discList);
  }

  List<DiscountDataModel> get getCustomerDiscountList =>
      this._customrDiscountList;

  //CART LIST ITEM
  void setCartList(List<ProductDataModel> list) {
    this._cartListItem.assignAll(list);
  }

  Either<String, Unit> addBuyQty(
    ProductDataModel item,
  ) {
    //find data
    var _currItem =
        _cartListItem.firstWhere((element) => element.itemId == item.itemId);

    if ((_currItem.totalBuy + 1) > double.parse(_currItem.qty!)) {
      return left("Stock tidak cukup");
    } else {
      _cartListItem[_cartListItem
              .indexWhere((element) => element.itemId == item.itemId)] =
          item.copyWith(totalBuy: _currItem.totalBuy + 1);

      return right(unit);
    }
  }

  void addCustomQty(ProductDataModel item, int newQty) {
    _cartListItem[_cartListItem
            .indexWhere((element) => element.itemId == item.itemId)] =
        item.copyWith(totalBuy: newQty);
  }

  Either<String, Unit> decreaseBuyQty(ProductDataModel item) {
    var _currItem =
        _cartListItem.firstWhere((element) => element.itemId == item.itemId);

    if ((_currItem.totalBuy - 1) < 1) {
      return left("Data Tidak boleh kosong");
    } else {
      _cartListItem[_cartListItem
              .indexWhere((element) => element.itemId == item.itemId)] =
          item.copyWith(totalBuy: _currItem.totalBuy - 1);

      return right(unit);
    }
  }

  double calculateSubTotal() {
    _grandTotal.value = 0;

    if (_cartListItem.length == 0) {
      _grandTotal.value = 0;
    }
    _cartListItem.forEach(
      (element) {
        //Calculate Grand Total
        _grandTotal.value +=
            element.totalBuy * double.parse(element.itemPrice!);
      },
    );
    return _grandTotal.value;
  }

  double calculateDiscountGrandTotal() {
    _grandDiscount.value = 0;

    if (_cartListItem.length == 0) {
      _grandDiscount.value = 0;
    }
    _cartListItem.forEach(
      (element) {
        var _subTotal = element.totalBuy * double.parse(element.itemPrice!);
        if (element.isPercentage == true) {
          _grandDiscount.value += element.totalBuy *
              double.parse(element.itemPrice!) *
              (element.discount! / 100.0);
        } else {
          if (element.discount! != 0)
            _grandDiscount.value += ((element.discount!));
        }
      },
    );

    return _grandDiscount.value;
  }

  double calculateFinalTotal() {
    double _finalTotal = 0;

    if (_cartListItem.length == 0) {
      _finalTotal = 0;
    }
    _cartListItem.forEach(
      (element) {
        print(element);
        var _subTotal = element.totalBuy * double.parse(element.itemPrice!);
        if (element.isPercentage == true) {
          _finalTotal += _subTotal - ((element.discount! / 100.0) * _subTotal);
        } else {
          if (element.discount! != 0) {
            _finalTotal += _subTotal - ((element.discount!));
          } else {
            _finalTotal += _subTotal;
          }
        }
      },
    );

    return _finalTotal;
  }

  void addItemToCart(ProductDataModel item) {
    print("Insert COde");
    _cartListItem.add(item.copyWith(itemPrice: checkRealPrice(item)));
  }

  String? checkRealPrice(ProductDataModel originalItem) {
    var _cust = getSelectedCustomer;
    if (_cust.customerTypeId == null ||
        _cust.customerTypeId!.isEmpty ||
        _cust.customerTypeId != originalItem.customerTypeId) {
      return originalItem.itemPrice;
    }
    if (_cust.customerTypeId == originalItem.customerTypeId) {
      return originalItem.newPrice;
    }
    return originalItem.itemPrice;
  }

  void updateItemFromCart(ProductDataModel newItem) {
    _cartListItem[_cartListItem
        .indexWhere((element) => element.itemId == newItem.itemId)] = newItem;
  }

  void removeItemFromCart(ProductDataModel item) {
    _cartListItem.removeWhere((element) => element.itemCode == item.itemCode);
    _selectedListItem
        .removeWhere((element) => element.itemCode == item.itemCode);
  }

  double get getGrandTotal => this._grandTotal.value;
  double get getGrandDiscount => this._grandDiscount.value;

  List<ProductDataModel> get getCartList => this._cartListItem;

  //SELECTED ITEM
  void setSelectedList(List<ProductDataModel> list) {
    this._selectedListItem.assignAll(list);
  }

  void updateSelectedList(ProductDataModel data, bool isChecked) {
    try {
      var _selected =
          this._selectedListItem.firstWhere((element) => element == data);
      var _new = _selected.copyWith(isChecked: isChecked);
      int index = _selectedListItem.indexOf(data);

      _selectedListItem.removeAt(index);
      _selectedListItem.insert(index, _new);
    } catch (e) {
      throw (Exception(e));
    }
  }

  ProductDataModel checkDiscountForItem(ProductDataModel cart) {
    var _discountList = getCustomerDiscountList;
    ProductDataModel _newCart = cart;

    for (var i = 0; i < _discountList.length; i++) {
      var _disc = _discountList[i];

      if (_disc.kategoriId == _newCart.kategoriId) {
        if (_disc.eventDiscount!.contains("%")) {
          var _newItem = _newCart.copyWith(isPercentage: true);
          _newCart = _newItem;
        } else {
          var _newItem = _newCart.copyWith(isPercentage: false);
          _newCart = _newItem;
        }

        try {
          var _data = double.parse(
              _disc.eventDiscount!.replaceAll(RegExp("[^\\d.]"), "").trim());

          var _withDiscount = _newCart.copyWith(discount: _data);
          _newCart = _withDiscount;
          return _newCart;
        } catch (e) {
          return cart;
        }
      } else {
        _newCart = _newCart.copyWith(isPercentage: false);
      }
    }
    return _newCart;
  }

  void onSaveSelectList() {
    // var _fakeData = _productList;

    // _selectedListItem.forEach((element) {
    //   //get item code from selected item
    //   var _itemId = element.itemId;
    //   //get original data from full LIST
    //   var _lastElement =
    //       _fakeData.firstWhere((realData) => realData.itemId == _itemId);
    //   var _index = _fakeData.indexOf(_lastElement);

    //   _fakeData.removeAt(_index);
    //   _fakeData.insert(_index, element);
    //   //add checked item to cart List
    // });

    _selectedListItem.forEach((element) {
      if (element.isChecked!) {
        //check exist data on cart
        // _cartListItem.add(element.copyWith(totalBuy: 1));
        var _selectedUnit = element.unitCode;
        if (_buyUnit == true) {
          _selectedUnit = element.purchaseUnitCode!;
        }
        try {
          var _afterDiscount = checkDiscountForItem(element);
          addBuyQty(_afterDiscount.copyWith(
            selectedUnit: _selectedUnit,
            itemPrice: initialPrice(
                element, checkRealPrice(_afterDiscount)!, _selectedUnit!),
          ));
        } catch (e) {
          var _afterDiscount = checkDiscountForItem(element);
          _cartListItem.add(
            _afterDiscount.copyWith(
              totalBuy: 1,
              itemPrice: initialPrice(
                  element, checkRealPrice(_afterDiscount)!, _selectedUnit!),
              selectedUnit: _selectedUnit,
            ),
          );
        }
      }
    });

    _selectedListItem.clear();
  }

  String initialPrice(
    ProductDataModel dataModel,
    String priceAfterDiscount,
    String selectedUnit,
  ) {
    if (selectedUnit == dataModel.unitCode) {
      return priceAfterDiscount;
    } else {
      var _unit = double.parse(dataModel.unitConversion!);
      var _total = double.parse(priceAfterDiscount) * _unit;

      return _total.toString();
    }
  }

  List<ProductDataModel> get getSElectedList => this._selectedListItem;

  void setCustomerList(List<CustomerDataModel> list) {
    this._userList.assignAll(list);
  }

  List<CustomerDataModel> get getCustomerList => this._userList;

  void setSelectedCustomer(CustomerDataModel data) {
    _selectedCustomer.value = data;
    if (data != CustomerDataModel()) {
      setPaymentTerm(SaleFunction().customerPaymentTerm(data));
      setPaymentType(SaleFunction().customerPaymentType(data));
    }
  }

  CustomerDataModel get getSelectedCustomer => this._selectedCustomer.value;

  RequestSaleTransactionDataModel get getSaleDataModel =>
      this._saleDataModel.value;
//void process request

  dynamic convertData() {
    RequestSaleTransactionDataModel _saleTransaction;
    List<ItemDetailDataModel> _itemList = [];

    _cartListItem.forEach((element) {
      var _discount = "";

      if (element.isPercentage!) {
        _discount = element.discount.toString() + "%";
      } else {
        _discount = element.discount.toString();
      }

      var _singleItem = ItemDetailDataModel(
          discount: _discount,
          itemName: element.itemName!,
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
      remark: getRemark,
      pmtterm: getPaymentTerm.paymentTermId,
      pmttype: getPaymentType.paymentTypeId,
      details: _itemList,
      transType: PrefStorage().getTransactionType(),
    );

    var _rawData = {
      'sales_trans': [_saleTransaction.toJson()]
    };
    print(_rawData);
    _saleDataModel.value = _saleTransaction;
    debugPrint('json: ${json.encode(_saleTransaction.toJson())}');
    return _rawData;
  }

  Future<SaleTransactionDataModel> saveTransactionData(
    @Default("PENDING") String status,
  ) async {
    var _transaction = SaleTransactionDataModel(
        date: CustomDate.getNowDate(),
        paymentTerm: getPaymentTerm,
        paymentType: getPaymentType,
        selectedCustomer: getSelectedCustomer,
        selectedLocation: getSelectedLocation,
        transactionNumber: getTransactionNumber,
        listProduct: getCartList,
        status: status,
        total: convertNumber(calculateFinalTotal()));
    var _savedList = _box.getSavedTransactionDarta();

    //check the data if there is duplicate just update
    try {
      var _duplicate = _savedList.firstWhere((element) =>
          element.transactionNumber == _transaction.transactionNumber);
      //remove duplicate
      _savedList.removeWhere((element) =>
          element.transactionNumber == _duplicate.transactionNumber);

      //Saving
      _savedList.add(_transaction);
      _box.saveTransactionData(_savedList);
    } catch (e) {
      //no duplicate data
      //just add as new data
      _savedList.add(_transaction);
      _box.saveTransactionData(_savedList);
    }
    return _transaction;
  }
}
