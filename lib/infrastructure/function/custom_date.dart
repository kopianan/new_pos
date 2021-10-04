import 'package:intl/intl.dart';

class CustomDate {
  static DateTime getNowDate() {
    var _date = DateTime.now();
    return _date;
  }

  static String convertDate(DateTime date) {
    var _formatter = DateFormat.yMEd();
    return _formatter.format(date);
  }

  static String convertDateSales(DateTime date) {
    var _formatter = DateFormat('dd/MM/yyyy');
    return _formatter.format(date);
  }

  static String getMonthYear() {
    var _dateNow = DateTime.now();
    var _date = DateFormat('yyMM').format(_dateNow);
    return _date;
  }

  static String getDateOnly() {
    var _dateNow = DateTime.now();
    var _date = DateFormat('dd').format(_dateNow);
    return _date;
  }
}
