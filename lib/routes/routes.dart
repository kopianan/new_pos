import 'package:get/get.dart';
import 'package:pos/application/sale/sale_binding.dart';
import 'package:pos/presentation/auth/auth_page.dart';
import 'package:pos/presentation/config/config_page.dart';
import 'package:pos/presentation/config/location_page.dart';
import 'package:pos/presentation/dashboard/dashboard_page.dart';
import 'package:pos/presentation/menu/menu_page.dart';
import 'package:pos/presentation/sale/add_item_page.dart';
import 'package:pos/presentation/sale/choose_customer_page.dart';
import 'package:pos/presentation/sale/sale_page.dart';
import 'package:pos/presentation/splash_screen_page.dart';

class Routes {
  static final List<GetPage> _pages = [
    GetPage(name: AuthPage.TAG, page: () => const AuthPage()),
    GetPage(name: ConfigPage.TAG, page: () => const ConfigPage()),
    GetPage(name: MenuPage.TAG, page: () => const MenuPage()),
    GetPage(name: LocationPage.TAG, page: () => const LocationPage()),
    GetPage(name: DashboardPage.TAG, page: () => const DashboardPage()),
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
    ),
  ];

  static List<GetPage> get getPages => _pages;
}
