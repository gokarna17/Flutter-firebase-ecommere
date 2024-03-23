import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/app_constraints.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstant.appScendoryColor,
            title: Text(
              "Sign In",
              style: TextStyle(color: AppConstant.appTextColor),
            ),
          ),
          body: Container(
            child: Column(children: [
              isKeyboardVisible
                  ? Text(
                      "Welcome to my app",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.bottomRight,
                child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Forget password?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppConstant.appScendoryColor),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: AppConstant.appScendoryColor,
                      borderRadius: BorderRadius.circular(25)),
                  width: Get.width / 1.2,
                  height: Get.height / 12,
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Image.asset("assets/images/google.png"),
                      label: Text(
                        "Sign in With google",
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
                          Get.offAll(() => SignUpScreen());
                        },
                        child: Row(
                          children: [
                            Text(
                              "Don't have an accont?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppConstant.appScendoryColor),
                            ),
                            Text(
                              "Sign Up",
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
        );
      },
    );
  }
}
