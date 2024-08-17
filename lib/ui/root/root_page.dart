import 'package:flutter/material.dart';
import "package:shalvarmalvar_app/constants/constants.dart";
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:shalvarmalvar_app/ui/home/home_page.dart';
import 'package:shalvarmalvar_app/ui/profile/profile_page.dart';
import 'package:shalvarmalvar_app/ui/cart/cart_page.dart';
import 'package:shalvarmalvar_app/ui/catalog/catalog_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int bottomIndex = 0;

  List<Widget> pages = const [
    HomePage(),
    CatalogPage(),
    CartPage(),
    ProfilePage(),
  ];

  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];

  List<String> appBarTitle = [
    'خانه',
    'علاقه‌مندی‌ها',
    'سبدخرید',
    'پروفایل',
  ];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
