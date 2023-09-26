import 'package:flutter/material.dart';
import 'package:zpaper/core/constant/colors.dart';

class TitlePopWallpaper extends StatelessWidget {
  final String listtitle;
  final String titlebottom;
  const TitlePopWallpaper(
      {super.key, required this.listtitle, required this.titlebottom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            listtitle,
            style: const TextStyle(
              color: Appcolor.white,
              fontSize: 20,
              fontFamily: "SF-Pro-Display-Semibold",
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  titlebottom,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 150, 115, 192),
                    fontSize: 17,
                    fontFamily: "SF-Pro-Display-Semibold",
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color.fromARGB(255, 150, 115, 192),
                  size: 17,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
