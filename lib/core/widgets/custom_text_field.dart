import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final dynamic validator;
  final dynamic onChanged;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.textEditingController,
    required this.validator,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white70,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          hintText: hintText,
        ),
        validator: validator,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
        onChanged: onChanged,
      ),
    );
  }
}
