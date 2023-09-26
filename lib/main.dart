import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zpaper/core/constant/route.dart';
import 'package:zpaper/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primarySwatch: const MaterialColor(0xFF5D457A, {
        50: Color(0xFF5D457A),
        100: Color(0xFF5D457A),
        200: Color(0xFF5D457A),
        300: Color(0xFF5D457A),
        400: Color(0xFF5D457A),
        500: Color(0xFF5D457A),
        600: Color(0xFF5D457A),
        700: Color(0xFF5D457A),
        800: Color(0xFF5D457A),
        900: Color(0xFF5D457A),
      })),
      debugShowCheckedModeBanner: false,
      initialRoute: Approute.splashscreen,
      getPages: routes,
    );
  }
}
