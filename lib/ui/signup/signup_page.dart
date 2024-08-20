import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shalvarmalvar_app/constants/constants.dart';
import 'package:shalvarmalvar_app/api/api_service.dart';
import 'package:shalvarmalvar_app/models/woocommerce/register_model.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late ApiService apiService;
  late CustomerModel customerModel;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool isApiCalled = false;

  @override
  void initState() {
    // TODO: implement initState
    apiService = ApiService();
    customerModel = CustomerModel();
    super.initState();
  }

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
              child: Form(
                key: globalKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            initialValue: customerModel.firstname,
                            onChanged: (value) {
                              customerModel.firstname = value;
                            },
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
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return "این فیلد الزامی است";
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            initialValue: customerModel.lastname,
                            onChanged: (value) {
                              customerModel.lastname = value;
                            },
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
                        const SizedBox(height: 20),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            initialValue: customerModel.email,
                            onChanged: (value) {
                              customerModel.email = value;
                            },
                            cursorColor: Constants.primaryColor,
                            style: const TextStyle(
                              fontFamily: "Muli",
                              fontSize: 20,
                              height: 2,
                            ),
                            textDirection: TextDirection.ltr,
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
                        const SizedBox(height: 20),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            initialValue: customerModel.password,
                            onChanged: (value) {
                              customerModel.password = value;
                            },
                            cursorColor: Constants.primaryColor,
                            style: const TextStyle(
                              fontFamily: "Muli",
                              fontSize: 20,
                              height: 2,
                            ),
                            textDirection: TextDirection.ltr,
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
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Constants.primaryColor,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 10,
                                ),
                              ),
                              onPressed: () {
                                if (globalKey.currentState!.validate()) {
                                  debugPrint('${customerModel.toJson()}');
                                  apiService.createCustomer(customerModel).then(
                                    (retRes) {
                                      if (retRes) {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: const Text("ووکامرس"),
                                              content: const Text(
                                                  "ثبت نام با موفقیت انجام شد"),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text("باشه"),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      } else {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: const Text("ووکامرس"),
                                              content: const Text(
                                                  "ایمیل قبللا ثبت شده است"),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text("باشه"),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                  );
                                }
                              },
                              child: const Text(
                                'ثبت نام',
                                style:
                                    TextStyle(fontFamily: "Muli", fontSize: 15),
                              ),
                            ),
                            const SizedBox(width: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Constants.primaryColor,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 10,
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'قبلا ثبت نام کردی؟',
                                style:
                                    TextStyle(fontFamily: "Muli", fontSize: 15),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
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
