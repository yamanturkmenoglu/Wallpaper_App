import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:zpaper/core/constant/colors.dart';
import 'package:zpaper/core/constant/imgesasset.dart';
import 'package:zpaper/core/constant/route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    /* startTimer(); */
    navigateToHome();
  }

  /* startTimer() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, goTohome);
  }

  goTohome() {
    Get.offNamed(Approute.home);
  } */
  Future<void> navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(Approute.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: content(),
    );
  }

  Widget content() {
    return Center(
        child: Lottie.asset(AppImageasset.splash, width: 250, height: 250));
  }
}
