import 'package:flutter/material.dart';
import 'package:zpaper/core/constant/colors.dart';
import 'package:zpaper/view/widget/home/appnamehome.dart';
import 'package:zpaper/view/widget/home/categoriselisthome.dart';
import 'package:zpaper/view/widget/home/foryoulist.dart';
import 'package:zpaper/view/widget/home/latestwallpaper.dart';
import 'package:zpaper/view/widget/home/popwallpaperlist.dart';
import 'package:zpaper/view/widget/home/titleforyouhome.dart';
import 'package:zpaper/view/widget/home/titlelatestwalpaper.dart';
import 'package:zpaper/view/widget/home/titlepopwalpaper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return
        /* backgroundColor: Appcolor.maincolor, */
        Container(
      color: Appcolor.maincolor,
      child: ListView(
        children: [
          const AppName(title1: "Z", title2: "paper"),
          const CategorisListHome(),
          TitleForYouHome(
              titlelist: "For You", titlebottom: "SEE MORE", onTap: () {}),
          const SizedBox(
            height: 20,
          ),
          const ForYouList(),
          const TitlePopWallpaper(
              listtitle: "Popular Wallpapers", titlebottom: "SEE MORE"),
          const SizedBox(
            height: 20,
          ),
          const PopWallpaperList(),
          const TitleLatestWalpaper(
              titlelist: "Latest Wallpapers", titlebottom: "SEE MORE"),
          const SizedBox(
            height: 20,
          ),
          const LatestWallpaper(),
        ],
      ),
    );
  }
}
