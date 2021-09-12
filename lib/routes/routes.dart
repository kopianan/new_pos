import 'package:get/get.dart';
import 'package:pos/presentation/auth/auth_page.dart';
import 'package:pos/presentation/config/config_page.dart';
import 'package:pos/presentation/config/location_page.dart';
import 'package:pos/presentation/menu/menu_page.dart';

class Routes {
  static final List<GetPage> _pages = [
    GetPage(name: AuthPage.TAG, page: () => const AuthPage()),
    GetPage(name: ConfigPage.TAG, page: () => const ConfigPage()),
    GetPage(name: MenuPage.TAG, page: () => const MenuPage()),
    GetPage(name: LocationPage.TAG, page: () => const LocationPage()),
  ];

  static List<GetPage> get getPages => _pages;
}
