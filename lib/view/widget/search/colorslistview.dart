import 'package:flutter/material.dart';
import 'package:zpaper/core/constant/colors.dart';

class ColorListView extends StatelessWidget {
  final String imagelink;
  final String colorname;
  const ColorListView(
      {super.key, required this.imagelink, required this.colorname});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 100,
        width: 100,
        child: Stack(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagelink),
              radius: 50,
            ),
            Center(
              child: Text(
                colorname,
                style: const TextStyle(
                    color: Appcolor.white,
                    fontSize: 22,
                    fontFamily: "SF-Pro-Display"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
