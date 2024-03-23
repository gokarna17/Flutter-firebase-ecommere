import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/app_constraints.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

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
            title: Text("Sign In"),
          ),
          body: Container(
            child: Column(children: [
              isKeyboardVisible
                  ? Text("Welcome to my app")
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
                  ))
            ]),
          ),
        );
      },
    );
  }
}
