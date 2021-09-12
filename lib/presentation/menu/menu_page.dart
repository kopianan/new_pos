import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  Get.toNamed(LocationPage.TAG);
                },
                text: "Set Location",
              ),
              const SizedBox(height: 20),
              _CustomOutlineButton(
                onTap: () {
                  Get.toNamed(AuthPage.TAG);
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
