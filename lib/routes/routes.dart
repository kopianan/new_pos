import 'package:get/get.dart';
import 'package:pos/application/sale/sale_binding.dart';
import 'package:pos/presentation/auth/auth_page.dart';
import 'package:pos/presentation/config/config_page.dart';
import 'package:pos/presentation/config/config_payment_id_page.dart';
import 'package:pos/presentation/config/location_page.dart';
import 'package:pos/presentation/dashboard/dashboard_page.dart';
import 'package:pos/presentation/list_sale/list_sale_page.dart';
import 'package:pos/presentation/list_sale/sale_history_detail_page.dart';
import 'package:pos/presentation/menu/menu_page.dart';
import 'package:pos/presentation/progress/transaction_progress_page.dart';
import 'package:pos/presentation/sale/add_item_page.dart';
import 'package:pos/presentation/sale/choose_customer_page.dart';
import 'package:pos/presentation/sale/sale_page.dart';
import 'package:pos/presentation/scan/qr_scan_page.dart';
import 'package:pos/presentation/splash_screen_page.dart';

class Routes {
  static final List<GetPage> _pages = [
    GetPage(name: AuthPage.TAG, page: () => const AuthPage()),
    GetPage(
        name: SaleHistoryDetailPage.TAG,
        page: () => const SaleHistoryDetailPage()),
    GetPage(name: ConfigPage.TAG, page: () => const ConfigPage()),
    GetPage(
        name: ConfigPaymentIdPage.TAG, page: () => const ConfigPaymentIdPage()),
    GetPage(name: MenuPage.TAG, page: () => const MenuPage()),
    GetPage(name: QrScanPage.TAG, page: () => const QrScanPage()),
    GetPage(name: LocationPage.TAG, page: () => const LocationPage()),
    GetPage(
        name: DashboardPage.TAG,
        page: () => const DashboardPage(),
        binding: SaleBinding()),
    GetPage(name: SplashScreenPage.TAG, page: () => const SplashScreenPage()),
    GetPage(
        name: SalePage.TAG,
        page: () => const SalePage(),
        binding: SaleBinding()),
    GetPage(
        name: ChooseCustomerPage.TAG,
        page: () => const ChooseCustomerPage(),
        binding: SaleBinding()),
    GetPage(
        name: AddItemPage.TAG,
        page: () => const AddItemPage(),
        binding: SaleBinding()),
    GetPage(
        name: ListSalePage.TAG,
        page: () => const ListSalePage(),
        binding: SaleBinding()),
    GetPage(
        name: TransactionProgressPage.TAG,
        page: () => const TransactionProgressPage(),
        binding: SaleBinding()),
  ];

  static List<GetPage> get getPages => _pages;
}
