import 'package:flutter/material.dart';

class CustomDiologBox {
  static void showMessage(
    BuildContext context,
    String title,
    String message,
    String buttonText,
    final VoidCallback onpressed,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            title: Text(
              title,
              style: const TextStyle(
                fontFamily: "Muli",
              ),
            ),
            content: Text(
              message,
              style: const TextStyle(
                fontFamily: "Muli",
                fontSize: 20,
              ),
            ),
            actions: [
              TextButton(
                onPressed: onpressed,
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    fontFamily: "Muli",
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
