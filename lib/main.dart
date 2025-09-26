import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/modern_page.dart';
import 'package:login/pages/modern_ui.dart';
import 'constants/routes.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:Pages(),
      // initialRoute: Routes.welcomePage,
      // getPages: Routes.routes,
    );
  }
}
