import 'package:flutter/material.dart';
import 'package:zpaper/core/constant/colors.dart';

class AppName extends StatelessWidget {
  final String title1;
  final String title2;
  const AppName({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title1,
            style: const TextStyle(
                color: Color.fromARGB(255, 150, 115, 192),
                fontSize: 28,
                fontFamily: "SF-Pro-Display")),
        Text(title2,
            style: const TextStyle(
                color: Appcolor.white,
                fontSize: 28,
                fontFamily: "SF-Pro-Display")),
      ],
    );
  }
}
