import '../pages/dashboard.dart';
import '../pages/forgot_new_password.dart';
import '../pages/forgot_password_page.dart';
import '../pages/forgot_password_verification.dart';
import '../pages/grid_page.dart';
import '../pages/login_page.dart';
import '../pages/modern_page.dart';
import '../pages/modern_ui.dart';
import '../pages/register_page.dart';
import '../pages/register_verification.dart';
import '../pages/task_page.dart';
import '../pages/task_register_page.dart';
import '../pages/welcome_page.dart';
import 'package:get/get.dart';

class Routes {
  static const welcomePage = "/welcomePage";
  static const loginPage = "/LoginPage";
  static const registerPage = "/RegisterPage";
  static const forgotPasswordVerification = "/ForgotPasswordVerification";
  static const registerVerification = "/RegisterVerification";
  static const forgotNewPassword = "/ForgotNewPassword";
  static const dashboard = "/Dashboard";
  static const forgotPasswordPage = "/ForgotPasswordPage";
  static const gridPage = "/GridPage";
  static const taskPage = "/taskPage";
  static const taskRegisterPage = "/taskRegisterPage";
  static const pages ="/pages";

  static final routes = [
    GetPage(name: Routes.welcomePage, page: () => WelcomePage()),
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
    GetPage(name: Routes.forgotNewPassword, page: () => ForgotNewPassword()),
    GetPage(name: Routes.dashboard, page: () => Dashboard()),
    GetPage(name: Routes.forgotPasswordPage, page: () => ForgotPasswordPage()),
    GetPage(name: Routes.forgotPasswordPage, page: () => ForgotPasswordPage()),
    GetPage(name: Routes.gridPage, page: () => GridPage()),
    GetPage(name: Routes.taskPage, page: () => TaskPage()),
    GetPage(name: Routes.taskRegisterPage, page: () => TaskRegisterPage()),
    GetPage(name: Routes.pages, page:()=>Pages()),
  ];
}
