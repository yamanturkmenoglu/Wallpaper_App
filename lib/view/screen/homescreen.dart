import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zpaper/controller/homescreen_controller.dart';
import 'package:zpaper/view/widget/home/custombottomnavbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        extendBody: true,
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 10, sigmaY: 10), // Blur efektini uygula
            child: BottomAppBar(
              color: Colors.transparent.withAlpha(50),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBottomNavBar(
                        onPressed: () {
                          controller.changePage(0);
                        },
                        titel: "Home",
                        icondata: FontAwesomeIcons.houseChimney,
                        active: controller.currentpage == 0 ? true : false),
                    CustomBottomNavBar(
                        onPressed: () {
                          controller.changePage(1);
                        },
                        titel: "Search",
                        icondata: FontAwesomeIcons.magnifyingGlass,
                        active: controller.currentpage == 1 ? true : false),
                    CustomBottomNavBar(
                        onPressed: () {
                          controller.changePage(2);
                        },
                        titel: "Profile",
                        icondata: FontAwesomeIcons.user,
                        active: controller.currentpage == 2 ? true : false),
                    CustomBottomNavBar(
                        onPressed: () {
                          controller.changePage(3);
                        },
                        titel: "Settings",
                        icondata: FontAwesomeIcons.gear,
                        active: controller.currentpage == 3 ? true : false),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: controller.listPage.elementAt(controller.currentpage),
      ),
    );
  }
}
