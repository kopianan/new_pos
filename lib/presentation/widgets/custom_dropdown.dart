import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    Key? key,
    required this.hintText,
    required this.label,
    required this.list,
    required this.onChanged,
    this.validator,
  }) : super(key: key);

  final String hintText;
  final String label;
  final FormFieldValidator<String>? validator;
  final List<String> list;
  final ValueChanged<String?>? onChanged;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? _selected = null;

  final FocusNode _focus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          child: Text(widget.label,
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
          child: DropdownButtonFormField<String>(
              onTap: () {
                _focus.unfocus();
              },
              focusNode: _focus,
              validator: widget.validator,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  hintText: widget.hintText,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  )),
              elevation: 5,
              onChanged: widget.onChanged,
              items: widget.list
                  .map((e) => DropdownMenuItem(child: Text(e), value: e))
                  .toList()),
        ),
      ],
    );
  }
}

class CustomDropdownLoading extends StatefulWidget {
  const CustomDropdownLoading({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  State<CustomDropdownLoading> createState() => _CustomDropdownLoadingState();
}

class _CustomDropdownLoadingState extends State<CustomDropdownLoading> {
  String? _selected = null;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          child: Text(widget.label,
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
          child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  hintText: "Loading . . . ",
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Transform.scale(
                    scale: 0.8,
                    child: const CircularProgressIndicator(),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  )),
              elevation: 5,
              onChanged: (e) {},
              items: []),
        ),
      ],
    );
  }
}
