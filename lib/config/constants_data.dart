import 'package:pos/domain/payment_term.dart';
import 'package:pos/infrastructure/storage/storage.dart';

enum TransStatus { PENDING, PROCCESS, SEND, CANCEL }

class ConstantsData {
  PrefStorage box = PrefStorage();

  List<PaymentTerm> getPaymentTermList() {
    return [
      // PaymentTerm(name: "CASH", code: "146948024696700001166"),
      PaymentTerm(name: "CASH", code: box.getPaymentTerm().code),
      PaymentTerm(name: "120 hari", code: "158235968566404281018"),
      PaymentTerm(name: "90 hari", code: "147123483011000088924"),
      PaymentTerm(name: "60 hari", code: "151315269033500462002"),
      PaymentTerm(name: "45 hari", code: "155548517500593206755"),
      PaymentTerm(name: "30 hari", code: "147123480480300066380"),
      PaymentTerm(name: "14 hari", code: "147123479087400056743")
    ];
  }

  static String get getGlobalPaymentType => "143166590740501290483";

  static String getPrintInvoiceUrl(String invoiceNumber) {
    return "http://vipcloud.erp.web.id:8080/teratai/print?helper_class=com.ssti.enterprise.pos.print.helper.InvoicePrintHelper&print_type=3&id=${invoiceNumber}&user_name=retailsoft&detail_per_page=10&html_tpl=POSHTML.vm";
  }

  static String getPdfPrint(String invoiceNumber) {
    return "http://vipcloud.erp.web.id:8080/teratai/print?helper_class=com.ssti.enterprise.pos.print.helper.InvoicePrintHelper&print_type=3&id=$invoiceNumber&user_name=retailsoft&detail_per_page=10";
  }

  static String getPdfDownload(String invoiceNumber) {
    return "http://vipcloud.erp.web.id:8080/teratai/print?helper_class=com.ssti.enterprise.pos.print.helper.InvoicePrintHelper&print_type=2&id=${invoiceNumber}&user_name=retailsoft&detail_per_page=10&html_tpl=POSHTML.vm";
  }
}
