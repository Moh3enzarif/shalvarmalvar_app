import 'package:flutter/material.dart';
import 'package:shalvarmalvar_app/constants/constants.dart';
import 'package:shalvarmalvar_app/api/api_service.dart';
import 'package:shalvarmalvar_app/models/woocommerce/register_model.dart';
import 'package:shalvarmalvar_app/ui/signup/custom_form_field.dart';

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
                    color: Constants.blackColor,
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
                    color: Constants.blackColor,
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
                        // This is begin of custom_form_field

                        CustomFormField(
                          validator: (value) {
                            if (value.toString().isEmpty) {
                              return "این فیلد الزامی است";
                            }
                            return null;
                          },
                          initialValue: customerModel.firstname,
                          onChanged: (value) {
                            customerModel.firstname = value;
                          },
                          textDirection: TextDirection.rtl,
                          labelName: "نام",
                        ),
                        const SizedBox(height: 20),
                        CustomFormField(
                          validator: (value) {
                            if (value.toString().isEmpty) {
                              return "این فیلد الزامی است";
                            }
                            return null;
                          },
                          initialValue: customerModel.lastname,
                          onChanged: (value) {
                            customerModel.lastname = value;
                          },
                          textDirection: TextDirection.rtl,
                          labelName: "نام خانوادگی",
                        ),
                        const SizedBox(height: 20),
                        CustomFormField(
                          validator: (value) {
                            if (value.toString().isEmpty) {
                              return "این فیلد الزامی است";
                            }
                            return null;
                          },
                          initialValue: customerModel.email,
                          onChanged: (value) {
                            customerModel.email = value;
                          },
                          textDirection: TextDirection.ltr,
                          labelName: "ایمیل",
                        ),
                        const SizedBox(height: 20),
                        CustomFormField(
                          validator: (value) {
                            if (value.toString().isEmpty) {
                              return "این فیلد الزامی است";
                            }
                            return null;
                          },
                          initialValue: customerModel.password,
                          onChanged: (value) {
                            customerModel.password = value;
                          },
                          textDirection: TextDirection.ltr,
                          labelName: "رمز عبور",
                        ),
                        // This is end of custom_form_field

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
                                  setState(() {
                                    isApiCalled = false;
                                  });
                                  apiService.createCustomer(customerModel).then(
                                    (retRes) {
                                      setState(() {
                                        isApiCalled = false;
                                      });
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
                                backgroundColor: Colors.white,
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
                        ),
                        const SizedBox(height: 30),
                        isApiCalled
                            ? const Text(
                                "لطفا منتظر بمانید ...",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: "Muli",
                                  fontSize: 20,
                                ),
                              )
                            : const Text(""),
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
