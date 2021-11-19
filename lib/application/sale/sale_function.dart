import 'package:pos/config/constants_data.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/payment_term.dart';
import 'package:pos/domain/sale/payment_type.dart';
import 'package:pos/infrastructure/storage/storage.dart';

class SaleFunction {
  final _box = PrefStorage();
  PaymentTerm customerPaymentTerm(CustomerDataModel customer) {
    if (customer == CustomerDataModel()) {
      return _box.loadPaymentTerm().last;
    }
    try {
      var _data = _box
          .loadPaymentTerm()
          .firstWhere((e) => e.paymentTermId == customer.defaultTermId);

      return _data;
    } catch (e) {
      return _box.loadPaymentTerm().last;
    }
  }

  PaymentType customerPaymentType(CustomerDataModel customer) {
    if (customer == CustomerDataModel()) {
      return _box.loadPaymentType().last;
    }
    try {
      var _data = _box
          .loadPaymentType()
          .firstWhere((e) => e.paymentTypeId == customer.defaultTypeId);

      return _data;
    } catch (e) {
      return _box.loadPaymentType().last;
    }
  }
}
