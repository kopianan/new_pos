import 'package:intl/intl.dart';

String convertNumber(double data) {
  return NumberFormat.currency(symbol: "Rp.", decimalDigits: 0).format(data);
}
