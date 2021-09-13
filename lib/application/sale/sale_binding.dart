import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';

class SaleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SaleController());
  }
}
