import 'package:pos/config/constants_data.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/payment_term.dart';

class SaleFunction {
  static PaymentTerm customerPaymentTerm(CustomerDataModel customer) {
    try {
      var _data = ConstantsData()
          .getPaymentTermList()
          .firstWhere((e) => e.code == customer.defaultTermId);

      return _data;
    } catch (e) {
      return ConstantsData().getPaymentTermList().last;
    }
  }

  static PaymentTerm customerPaymentType(CustomerDataModel customer) {
    try {
      if (customer.defaultTypeId == ("143166590740501290483")) {
        return PaymentTerm(name: "CASH", code: "143166590740501290483");
      } else {
        return PaymentTerm(name: "CREDIT", code: "143166594332601303864");
      }
    } catch (e) {
      return PaymentTerm(name: "CREDIT", code: "143166594332601303864");
    }
  }
}
