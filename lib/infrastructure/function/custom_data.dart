import 'package:pos/infrastructure/storage/storage.dart';

import 'custom_date.dart';

class CustomData {
  PrefStorage box = PrefStorage();
  String generateTransactionId() {
    var _user = box.getUserLogin();

    var _transType = box.getTransactionType();
    var _location = _user.locationCode;
    var _uniqueCode = _user.employeeId!.substring(_user.employeeId!.length - 3);
    String monthYear = CustomDate.getMonthYear();
    String dateOnly = CustomDate.getDateOnly();
    var _date = DateTime.now();

    var order = (_date.hour * 120) + (_date.minute + 60) + (_date.second);

    String fullId =
        "${_transType}M-${_location}/${monthYear}/${dateOnly}${order.toString().padLeft(5,'0')}";
    return fullId;
  }
}
