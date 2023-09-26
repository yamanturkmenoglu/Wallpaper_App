import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zpaper/core/constant/colors.dart';
import 'package:zpaper/view/widget/search/categorislistview.dart';
import 'package:zpaper/view/widget/search/colorslistview.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Appcolor.maincolor,
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Discover",
                style: TextStyle(
                    color: Appcolor.white,
                    fontSize: 28,
                    fontFamily: "SF-Pro-Display")),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Appcolor.gri, fontSize: 20),
                filled: true,
                fillColor: Appcolor.zcolor2,
                prefixIcon: Padding(
                  padding: EdgeInsets.all(10.0),
                  // ignore: deprecated_member_use
                  child: FaIcon(FontAwesomeIcons.search, color: Appcolor.gri),
                ),
                contentPadding: EdgeInsets.fromLTRB(
                    10, 10, 10, 8), // Adjust padding as needed
                isCollapsed: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Colors",
                style: TextStyle(
                    color: Appcolor.white,
                    fontSize: 28,
                    fontFamily: "SF-Pro-Display")),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ColorListView(
                    colorname: 'RED',
                    imagelink: 'assets/images/red.jpg',
                  ),
                ),
                SizedBox(
                  width: 0,
                ),
                ColorListView(
                  colorname: 'PİNK',
                  imagelink: 'assets/images/pink.jpg',
                ),
                SizedBox(
                  width: 8,
                ),
                ColorListView(
                  colorname: 'BLACK',
                  imagelink: 'assets/images/Black.jpg',
                ),
                SizedBox(
                  width: 8,
                ),
                ColorListView(
                  colorname: 'BLUE',
                  imagelink: 'assets/images/blue.jpg',
                ),
                SizedBox(
                  width: 8,
                ),
                ColorListView(
                  colorname: 'GREEN',
                  imagelink: 'assets/images/green.jpg',
                ),
                SizedBox(
                  width: 8,
                ),
                ColorListView(
                  colorname: 'SİLVER',
                  imagelink: 'assets/images/Silver.jpg',
                ),
                SizedBox(
                  width: 8,
                ),
                ColorListView(
                  colorname: 'WHİTE',
                  imagelink: 'assets/images/white.jpg',
                ),
                SizedBox(
                  width: 8,
                ),
                ColorListView(
                  colorname: 'GOLD',
                  imagelink: 'assets/images/gold.jpg',
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Categoris",
                style: TextStyle(
                    color: Appcolor.white,
                    fontSize: 28,
                    fontFamily: "SF-Pro-Display")),
          ),
          const SizedBox(height: 5),
          const Row(
            children: [
              CategorisListView(
                catname: 'Anime',
                imagelink: 'assets/images/catanime.png',
              ),
              CategorisListView(
                catname: 'Art',
                imagelink: 'assets/images/art.jpg',
              ),
            ],
          ),
          const Row(
            children: [
              CategorisListView(
                catname: 'Space',
                imagelink: 'assets/images/Space.jpg',
              ),
              CategorisListView(
                catname: 'Brands',
                imagelink: 'assets/images/brands.png',
              ),
            ],
          ),
          const Row(
            children: [
              CategorisListView(
                catname: 'Cars',
                imagelink: 'assets/images/cars.jpg',
              ),
              CategorisListView(
                catname: 'Cartoon',
                imagelink: 'assets/images/cartoon.jpg',
              ),
            ],
          ),
          const Row(
            children: [
              CategorisListView(
                catname: 'Motors',
                imagelink: 'assets/images/motor.jpg',
              ),
              CategorisListView(
                catname: 'Movies',
                imagelink: 'assets/images/movie.jpg',
              ),
            ],
          ),
          const Row(
            children: [
              CategorisListView(
                catname: 'People',
                imagelink: 'assets/images/people.jpg',
              ),
              CategorisListView(
                catname: 'Skye',
                imagelink: 'assets/images/skye.jpg',
              ),
            ],
          ),
          const Row(
            children: [
              CategorisListView(
                catname: 'Spor',
                imagelink: 'assets/images/spor.jpg',
              ),
              CategorisListView(
                catname: 'Gaming',
                imagelink: 'assets/images/gaming.jpg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
