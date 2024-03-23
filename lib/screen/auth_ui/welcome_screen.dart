import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/app_constraints.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConstant.appScendoryColor,
        title: Text(
          "Welcome to Ecommerce",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Lottie.asset("assets/images/splash.json"),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Happy Shopping",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
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
            ),
            SizedBox(
              height: Get.height / 40,
            ),
            Material(
              child: Container(
                  decoration: BoxDecoration(
                      color: AppConstant.appScendoryColor,
                      borderRadius: BorderRadius.circular(25)),
                  width: Get.width / 1.2,
                  height: Get.height / 12,
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.email,
                        color: AppConstant.appTextColor,
                        weight: Get.width,
                      ),
                      label: Text(
                        "Sign in With Email",
                        style: TextStyle(color: AppConstant.appTextColor),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
