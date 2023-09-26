import 'package:get/get.dart';
import 'package:zpaper/view/screen/homescreen.dart';
import 'package:zpaper/view/screen/profile.dart';
import 'package:zpaper/view/screen/search.dart';
import 'package:zpaper/view/screen/settings.dart';
import 'package:zpaper/view/screen/splashscreen.dart';

import 'core/constant/route.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: Approute.splashscreen, page: () => const SplashScreen()),
  GetPage(name: Approute.home, page: () => const HomeScreen()),
  GetPage(name: Approute.search, page: () => const Search()),
  GetPage(name: Approute.profile, page: () => const Profile()),
  GetPage(name: Approute.settings, page: () => const Settings()),
];
