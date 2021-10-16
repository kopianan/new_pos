import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.label,
      this.suffixIcon,
      this.validator,
      this.readOnly = false,
      this.isPassword = false,
      this.onTap})
      : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final String label;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  final bool? readOnly;
  final GestureTapCallback? onTap;
  final bool? isPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          child: Text(label,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[400]!,
                  blurRadius: 2,
                  offset: const Offset(2, 1),
                  spreadRadius: 1)
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            obscureText: isPassword!,
            readOnly: readOnly!,
            onTap: onTap,
            controller: controller,
            validator: (e) {
              return validator!(e);
            },
            style: const TextStyle(fontSize: 18),
            decoration: InputDecoration(
                suffixIcon: suffixIcon,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                hintText: hintText,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ),
      ],
    );
  }
}
