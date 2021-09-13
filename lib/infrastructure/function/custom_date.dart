import 'package:intl/intl.dart';

class CustomDate {
  static String getNowDate() {
    var _date = DateTime.now();

    var _formatter = DateFormat.yMEd();
    return _formatter.format(_date);
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
