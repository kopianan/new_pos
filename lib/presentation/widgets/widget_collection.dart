import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedLogo extends StatelessWidget {
  const RoundedLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width / 3,
      height: Get.size.width / 3,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
                offset: Offset(1, 2),
                spreadRadius: 1)
          ],
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage(
                'assets/images/ig_logo.png',
              ),
              fit: BoxFit.cover)),
    );
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}

class PosDefaultButton extends StatelessWidget {
  const PosDefaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: MaterialButton(
          height: 50,
          onPressed: () {
            onPressed();
          },
          color: Colors.blueGrey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ));
  }
}
