import 'package:flutter/material.dart';
import 'package:shalvarmalvar_app/constants/constants.dart';

class CustomFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final Object? initialValue;
  final Function(String)? onChanged;
  final TextDirection textDirection;
  final String labelName;

  const CustomFormField({
    super.key,
    required this.validator,
    required this.initialValue,
    required this.onChanged,
    required this.textDirection,
    required this.labelName,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        initialValue: initialValue != null ? initialValue.toString() : '',
        onChanged: onChanged,
        cursorColor: Constants.primaryColor,
        style: const TextStyle(
          fontFamily: "Muli",
          fontSize: 20,
          height: 2,
        ),
        textDirection: textDirection,
        decoration: InputDecoration(
          hintTextDirection: textDirection,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Constants.primaryColor,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          label: Text(
            labelName,
            style: const TextStyle(
                fontFamily: "Muli",
                fontSize: 20,
                color: Constants.blackColor,
                fontWeight: FontWeight.w900),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
