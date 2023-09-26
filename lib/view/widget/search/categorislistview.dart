import 'package:flutter/material.dart';
import 'package:zpaper/core/constant/colors.dart';

class CategorisListView extends StatelessWidget {
  final String imagelink;
  final String catname;
  const CategorisListView(
      {super.key, required this.imagelink, required this.catname});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Card(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    imagelink,
                    height: 110,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 80,
                  bottom: 0,
                  right: 40,
                  left: 40,
                  child: Text(
                    catname,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Appcolor.white,
                        fontSize: 22,
                        fontFamily: "SF-Pro-Display"),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
