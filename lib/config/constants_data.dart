import 'package:pos/domain/payment_term.dart';
import 'package:pos/domain/sale/payment_type.dart';
import 'package:pos/infrastructure/storage/storage.dart';

enum TransStatus { PENDING, PROCCESS, SEND, CANCEL }

class ConstantsData {
  PrefStorage box = PrefStorage();

  static var cashPaymentTerm = PaymentTerm(
    paymentTermCode: "CASH",
    paymentTermId: "146948024696700001166",
    description: "Cash",
  );

  static var cashPaymentType = PaymentType(
    description: "Cash",
    paymentTypeCode: "CASH",
    paymentTypeId: "MDN159529915480500884786",
  );

  static var creditPaymentTerm = PaymentTerm(
    paymentTermCode: "CREDIT",
    paymentTermId: "147123480480300066380",
    description: "Credit",
  );

  static var creditPaymentType = PaymentType(
    description: "Credit",
    paymentTypeCode: "CREDIT",
    paymentTypeId: "143166594332601303864",
  );

  String getPrintInvoiceUrl(String invoiceNumber) {
    return "${box.getBaseUrl()}print?helper_class=com.ssti.enterprise.pos.print.helper.InvoicePrintHelper&print_type=3&id=${invoiceNumber}&user_name=retailsoft&detail_per_page=10&html_tpl=POSHTML.vm";
  }
  // static String getPrintInvoiceUrl(String invoiceNumber) {
  //   return "http://vipcloud.erp.web.id:8080/teratai/print?helper_class=com.ssti.enterprise.pos.print.helper.InvoicePrintHelper&print_type=3&id=${invoiceNumber}&user_name=retailsoft&detail_per_page=10&html_tpl=POSHTML.vm";
  // }

  String getPdfPrint(String invoiceNumber) {
    return "${box.getBaseUrl()}print?helper_class=com.ssti.enterprise.pos.print.helper.InvoicePrintHelper&print_type=3&id=$invoiceNumber&user_name=retailsoft&detail_per_page=10";
  }
  // static String getPdfPrint(String invoiceNumber) {
  //   return "http://vipcloud.erp.web.id:8080/teratai/print?helper_class=com.ssti.enterprise.pos.print.helper.InvoicePrintHelper&print_type=3&id=$invoiceNumber&user_name=retailsoft&detail_per_page=10";
  // }

  String getPdfDownload(String invoiceNumber) {
    return "${box.getBaseUrl()}print?helper_class=com.ssti.enterprise.pos.print.helper.InvoicePrintHelper&print_type=2&id=${invoiceNumber}&user_name=retailsoft&detail_per_page=10&html_tpl=POSHTML.vm";
  }
  // static String getPdfDownload(String invoiceNumber) {
  //   return "http://vipcloud.erp.web.id:8080/teratai/print?helper_class=com.ssti.enterprise.pos.print.helper.InvoicePrintHelper&print_type=2&id=${invoiceNumber}&user_name=retailsoft&detail_per_page=10&html_tpl=POSHTML.vm";
  // }
}
