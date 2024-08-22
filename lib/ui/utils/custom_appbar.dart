import 'package:flutter/material.dart';
import 'package:shalvarmalvar_app/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  final String appBarTitle;
  const CustomAppbar({
    required this.appBarTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            color: Constants.blackColor,
            Icons.notifications,
            size: 30.0,
          ),
          Text(
            appBarTitle,
            style: const TextStyle(
              color: Constants.blackColor,
              fontFamily: 'Lalezar',
              fontSize: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
