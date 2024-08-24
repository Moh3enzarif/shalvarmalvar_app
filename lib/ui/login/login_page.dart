import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shalvarmalvar_app/constants/constants.dart';
import 'package:shalvarmalvar_app/api/api_service.dart';
import 'package:shalvarmalvar_app/models/woocommerce/register_model.dart';
import 'package:shalvarmalvar_app/ui/signup/signup_page.dart';
import 'package:shalvarmalvar_app/ui/utils/custom_diolog_box.dart';
import 'package:shalvarmalvar_app/ui/utils/custom_appbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late ApiService apiService;
  late CustomerModel customerModel;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool isApiCalled = false;
  TextEditingController email =
      TextEditingController(text: "pavane32jdf345@gmail.com");
  TextEditingController pasword = TextEditingController(text: "ZYXrcNQgTUCIq");

  @override
  void initState() {
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
          AppBar(
            title: const CustomAppbar(
              appBarTitle: "ورود به برنامه",
            ),
          ),
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
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            controller: email,
                            cursorColor: Constants.blackColor,
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
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Constants.primaryColor,
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
                                    color: Constants.blackColor,
                                    fontWeight: FontWeight.w900),
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
                            controller: pasword,
                            cursorColor: Constants.blackColor,
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
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Constants.primaryColor,
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
                                    color: Constants.blackColor,
                                    fontWeight: FontWeight.w900),
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
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 10,
                                ),
                              ),
                              onPressed: () {
                                if (globalKey.currentState!.validate()) {
                                  // debugPrint('${customerModel.toJson()}');
                                  setState(() {
                                    isApiCalled = true;
                                  });
                                  apiService
                                      .loginCustomer(
                                    email.text,
                                    pasword.text,
                                  )
                                      .then(
                                    (retRes) {
                                      setState(() {
                                        isApiCalled = false;
                                      });
                                      if (retRes.success!) {
                                        CustomDiologBox.showMessage(
                                          context,
                                          'ورود موفق',
                                          'با موفقیت وارد شدید',
                                          'بستن',
                                          () {
                                            Navigator.of(context).pop();
                                          },
                                        );
                                      } else {
                                        CustomDiologBox.showMessage(
                                          context,
                                          'ناموفق',
                                          'ایمیل یا رمز عبور نامعتبراست',
                                          'بستن',
                                          () {
                                            Navigator.of(context).pop();
                                          },
                                        );
                                      }
                                    },
                                  );
                                }
                              },
                              child: const Text(
                                'ورود',
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
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child: const SignupPage(),
                                      type: PageTransitionType.leftToRight),
                                );
                              },
                              child: const Text(
                                'اکانت ندارید؟',
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
