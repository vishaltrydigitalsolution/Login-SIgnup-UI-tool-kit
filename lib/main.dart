    import 'package:flutter/material.dart';
    import 'package:get/get.dart';
    import 'package:login/pages/controllers/dashborad_controller.dart';
    import 'package:login/pages/dashboard.dart';
    import 'package:login/pages/forgot_password_page.dart';
    import 'package:login/pages/login_page.dart';
    import 'package:login/pages/register_page.dart';
    import 'package:login/pages/register_verification.dart';
    import 'package:login/pages/welcome_page.dart';
    import 'package:get/route_manager.dart';
    import 'constants/routes.dart';
    import 'pages/forgot_new_password.dart';
    import 'pages/forgot_password_verification.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    getPages: [
    GetPage(name: '/', page: () => WelcomePage()),
    GetPage(name: Routes.loginPage, page: () => LoginPage()),
    GetPage(name: Routes.registerPage, page: () => RegisterPage()),
    GetPage(
    name: Routes.forgotPasswordVerification,
    page: () => ForgotPasswordVerification(),
        ),
        GetPage(
          name: Routes.registerVerification,
          page: () => RegisterVerification(),
        ),
        GetPage(
          name: Routes.forgotNewPassword,
          page: () => ForgotNewPassword(),
        ),
       GetPage(
          name: Routes.dashboard,
          page: () => Dashboard(

          ),
          binding: BindingsBuilder(() {
            Get.lazyPut<DashboradController>(() => DashboradController());
          }),
        ),
        GetPage(
          name: Routes.forgotPasswordPage,
          page: () => ForgotPasswordPage(),
        ),
      ],
      // home: WelcomePage(),
    );
  }
}
