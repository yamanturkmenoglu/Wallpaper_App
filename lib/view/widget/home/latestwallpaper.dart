import 'package:flutter/material.dart';
import 'package:zpaper/core/constant/colors.dart';
import 'package:zpaper/core/constant/lists.dart';

class LatestWallpaper extends StatelessWidget {
  const LatestWallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 185,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: latestwalllist.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150,
                height: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Appcolor.zcolor2)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset(
                        latestwalllist[index]["image"],
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Appcolor.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border,
                              size: 15,
                              color: Appcolor.zcolor2,
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            latestwalllist[index]["like"],
                            style: const TextStyle(color: Appcolor.white),
                          ),
                        ],
                      ),
                    ],
                  )
                ]),
              ),
            );
          })),
    );
  }
}
