import 'package:flutter/material.dart';
import 'package:zpaper/core/constant/colors.dart';

class TitleForYouHome extends StatelessWidget {
  final String titlelist;
  final String titlebottom;
  final void Function()? onTap;
  const TitleForYouHome(
      {super.key,
      required this.titlelist,
      required this.titlebottom,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titlelist,
            style: const TextStyle(
                color: Appcolor.white,
                fontSize: 20,
                fontFamily: "SF-Pro-Display-Semibold"),
          ),
          InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Text(
                  titlebottom,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 150, 115, 192),
                      fontSize: 17,
                      fontFamily: "SF-Pro-Display-Semibold"),
                ),
                const Icon(Icons.arrow_forward_ios_rounded,
                    color: Color.fromARGB(255, 150, 115, 192), size: 17)
              ],
            ),
          )
        ],
      ),
    );
  }
}
