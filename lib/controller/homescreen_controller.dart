import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zpaper/view/screen/home.dart';
import 'package:zpaper/view/screen/profile.dart';
import 'package:zpaper/view/screen/search.dart';
import 'package:zpaper/view/screen/settings.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const Home(),
    const Search(),
    const Profile(),
    const Settings(),
  ];

  @override
  // ignore: avoid_renaming_method_parameters
  changePage(int i) {
    currentpage = i;
    update();
  }
}
