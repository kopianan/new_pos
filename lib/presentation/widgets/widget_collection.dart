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

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}

class TransactionInfoDetail extends StatelessWidget {
  const TransactionInfoDetail(
      {Key? key, required this.title, required this.value})
      : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Text(
                title,
                style: textStyle,
              )),
          Text(":  ", style: textStyle),
          Expanded(
              flex: 3,
              child: Text(
                value,
                style: textStyle,
              ))
        ],
      ),
    );
  }
}
