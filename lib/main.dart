import 'package:flutter/material.dart';
import 'package:shalvarmalvar_app/ui/login/login_page.dart';
// import 'package:shalvarmalvar_app/ui/root/root_page.dart';
// import 'package:shalvarmalvar_app/ui/signup/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
