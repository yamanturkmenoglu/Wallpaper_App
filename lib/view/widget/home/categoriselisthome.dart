import 'package:flutter/material.dart';
import 'package:zpaper/core/constant/colors.dart';
import 'package:zpaper/core/constant/lists.dart';

class CategorisListHome extends StatelessWidget {
  const CategorisListHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catlist.length,
          itemBuilder: ((context, index) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                        onTap: () {},
                        child: Image.asset(catlist[index]["image"])),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    child: Text(
                      catlist[index]["name"],
                      style: const TextStyle(
                          color: Appcolor.white,
                          fontSize: 22,
                          fontFamily: "SF-Pro-Display"),
                    )),
              ],
            );
          }),
        ),
      ),
    );
  }
}
