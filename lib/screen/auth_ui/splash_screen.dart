import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_ecommerce/widgets/app_constraints.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.offAll(() => WelcomeScreen());
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstant.appScendoryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstant.appScendoryColor,
      ),
      body: Container(
        width: Get.width,
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Lottie.asset('assets/images/splash.json'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              alignment: Alignment.center,
              width: Get.width,
              child: Text(
                AppConstant.appPoweredBy,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
