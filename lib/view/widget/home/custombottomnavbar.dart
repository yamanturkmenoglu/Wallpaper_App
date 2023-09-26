import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zpaper/core/constant/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  final void Function()? onPressed;
  final String titel;
  final IconData icondata;
  final bool? active;
  const CustomBottomNavBar({
    super.key,
    required this.onPressed,
    required this.titel,
    required this.icondata,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(
            icondata,
            size: 20,
            color: active == true ? Appcolor.zcolor : Appcolor.white,
          ),
          Text(titel,
              style: TextStyle(
                  color: active == true ? Appcolor.zcolor : Appcolor.white,
                  fontSize: 10,
                  fontFamily: "SF-Pro-Display")),
        ],
      ),
    );
  }
}
