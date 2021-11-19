import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/infrastructure/function/custom_snackbar.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/presentation/auth/auth_page.dart';
import 'package:pos/presentation/config/config_page.dart';
import 'package:pos/presentation/config/location_page.dart';
import 'package:pos/presentation/widgets/widget_collection.dart';

class MenuPage extends StatefulWidget {
  static const String TAG = '/menu-page';
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<String> _validatedLocation = [];
  String? location = null;
  final _box = PrefStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: AssetImage('assets/images/bg_default.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const RoundedLogo(),
              const SizedBox(height: 50),
              _CustomButton(
                onTap: () {
                  Get.toNamed(ConfigPage.TAG);
                },
                text: "Set Config",
              ),
              const SizedBox(height: 20),
              _CustomButton(
                onTap: () {
                  try {
                    var _url = PrefStorage().getBaseUrl();
                    Get.toNamed(LocationPage.TAG);
                  } catch (e) {
                    Get.showSnackbar(GetBar(
                      message: "Atur Config Dulu",
                      duration: Duration(seconds: 2),
                    ));
                  }
                },
                text: "Set Location",
              ),
              const SizedBox(height: 20),
              _CustomOutlineButton(
                color: Colors.white,
                onTap: () {
                  //check if base url already there
                  try {
                    var _url = _box.getBaseUrl();
                    var _location = _box.getSelectedLocation();
                    var _paymentTerm = _box.loadPaymentTerm();
                    var _paymentType = _box.loadPaymentType();
                    Get.offNamed(AuthPage.TAG);
                  } catch (e) {
                    print(e);
                    showDefaultSnackbar(context,
                        message:
                            "Silahkan set config, pilih lokasi dan payment ID terlebih dahulu");
                  }
                },
                text: "Login",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final Function onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        color: Colors.blueGrey,
        height: 80,
        onPressed: () {
          onTap();
        },
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}

class _CustomOutlineButton extends StatelessWidget {
  const _CustomOutlineButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.color = Colors.white})
      : super(key: key);
  final Function onTap;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        height: 80,
        onPressed: () {
          onTap();
        },
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: const BorderSide(width: 3, color: Colors.blueGrey)),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
      ),
    );
  }
}
