import 'package:flutter/material.dart';
import 'package:shalvarmalvar_app/constants/constants.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            right: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Constants.primaryColor.withOpacity(0.15),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Constants.primaryColor,
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Constants.primaryColor.withOpacity(0.15),
                  ),
                  child: const Icon(
                    Icons.share,
                    color: Constants.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 150,
            right: 20,
            left: 20,
            child: SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.8,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          cursorColor: Constants.primaryColor,
                          style: const TextStyle(
                            fontFamily: "Muli",
                            fontSize: 20,
                            height: 2,
                          ),
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
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
                            label: const Text(
                              "نام",
                              style: TextStyle(
                                  fontFamily: "Muli",
                                  fontSize: 20,
                                  color: Constants.primaryColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            right: 20,
            left: 20,
            child: SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.8,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          cursorColor: Constants.primaryColor,
                          style: const TextStyle(
                            fontFamily: "Muli",
                            fontSize: 20,
                            height: 2,
                          ),
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
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
                            label: const Text(
                              "نام خانوادگی",
                              style: TextStyle(
                                  fontFamily: "Muli",
                                  fontSize: 20,
                                  color: Constants.primaryColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            right: 20,
            left: 20,
            child: SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.8,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          cursorColor: Constants.primaryColor,
                          style: const TextStyle(
                            fontFamily: "Muli",
                            fontSize: 20,
                            height: 2,
                          ),
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
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
                            label: const Text(
                              "ایمیل",
                              style: TextStyle(
                                  fontFamily: "Muli",
                                  fontSize: 20,
                                  color: Constants.primaryColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            right: 20,
            left: 20,
            child: SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.8,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          cursorColor: Constants.primaryColor,
                          style: const TextStyle(
                            fontFamily: "Muli",
                            fontSize: 20,
                            height: 2,
                          ),
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
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
                            label: const Text(
                              "رمز عبور",
                              style: TextStyle(
                                  fontFamily: "Muli",
                                  fontSize: 20,
                                  color: Constants.primaryColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
