import 'package:intl/intl.dart';

class CustomDate {
  static String getNowDate() {
    var _date = DateTime.now();

    var _formatter = DateFormat.yMEd();
    return _formatter.format(_date);
  }
}
