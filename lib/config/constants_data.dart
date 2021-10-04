import 'package:pos/domain/payment_term.dart';

class ConstantsData {
  static List<PaymentTerm> _paymentTerm = [
    PaymentTerm(name: "CASH", code: "146948024696700001166"),
    PaymentTerm(name: "120 hari", code: "158235968566404281018"),
    PaymentTerm(name: "90 hari", code: "147123483011000088924"),
    PaymentTerm(name: "60 hari", code: "151315269033500462002"),
    PaymentTerm(name: "45 hari", code: "155548517500593206755"),
    PaymentTerm(name: "30 hari", code: "147123480480300066380"),
    PaymentTerm(name: "14 hari", code: "147123479087400056743")
  ];

  static List<PaymentTerm> get getPaymentTermList => _paymentTerm;
}
