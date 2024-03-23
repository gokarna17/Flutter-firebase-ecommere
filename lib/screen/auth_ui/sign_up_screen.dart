import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screen/auth_ui/sign_in_screen.dart';
import 'package:flutter_ecommerce/widgets/app_constraints.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstant.appScendoryColor,
            title: Text(
              "Sign UP",
              style: TextStyle(color: AppConstant.appTextColor),
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              child: Column(children: [
                isKeyboardVisible
                    ? Text(
                        "Welcome to my app",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    : Column(
                        children: [
                          Lottie.asset('assets/images/splash.json'),
                        ],
                      ),
                Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        cursorColor: AppConstant.appScendoryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )),
                Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        cursorColor: AppConstant.appScendoryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "username",
                            prefixIcon: Icon(Icons.people),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )),
                Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        cursorColor: AppConstant.appScendoryColor,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: "Phone",
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )),
                Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        cursorColor: AppConstant.appScendoryColor,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                            hintText: "City",
                            prefixIcon: Icon(Icons.location_city),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )),
                Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        cursorColor: AppConstant.appScendoryColor,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: Icon(Icons.visibility_off),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: AppConstant.appScendoryColor,
                        borderRadius: BorderRadius.circular(25)),
                    width: Get.width / 1.2,
                    height: Get.height / 12,
                    child: TextButton.icon(
                        icon: Image.asset("assets/images/google.png"),
                        onPressed: () {},
                        label: Text(
                          "Sign Up",
                          style: TextStyle(color: AppConstant.appTextColor),
                        ))),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                          onTap: () {
                            Get.offAll(() => SignInScreen());
                          },
                          child: Row(
                            children: [
                              Text(
                                "Already an accont?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppConstant.appScendoryColor),
                              ),
                              Text(
                                "Sign In",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: AppConstant.appScendoryColor),
                              ),
                            ],
                          )),
                    )
                  ],
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}
