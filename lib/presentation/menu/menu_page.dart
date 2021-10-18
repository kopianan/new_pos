import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/auth/auth_cubit.dart';
import 'package:pos/infrastructure/function/custom_snackbar.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/presentation/auth/auth_page.dart';
import 'package:pos/presentation/config/config_page.dart';
import 'package:pos/presentation/config/config_payment_id_page.dart';
import 'package:pos/presentation/config/location_page.dart';
import 'package:pos/presentation/widgets/custom_dropdown.dart';
import 'package:pos/presentation/widgets/widget_collection.dart';

import '../../injectable.dart';

class MenuPage extends StatefulWidget {
  static const String TAG = '/menu-page';
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<String> _validatedLocation = [];
  String? location = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
              _CustomButton(
                onTap: () {
                  Get.toNamed(ConfigPaymentIdPage.TAG); 
                },
                text: "Set Payment ID",
              ),
              const SizedBox(height: 20),
              _CustomOutlineButton(
                onTap: () {
                  //check if base url already there
                  try {
                    var _url = PrefStorage().getBaseUrl();
                    var _location = PrefStorage().getSelectedLocation();
                    Get.offNamed(AuthPage.TAG);
                  } catch (e) {
                    showDefaultSnackbar(context,
                        message:
                            "Silahkan set config dan pilih lokasi terlebih dahulu");
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
  const _CustomOutlineButton({
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
