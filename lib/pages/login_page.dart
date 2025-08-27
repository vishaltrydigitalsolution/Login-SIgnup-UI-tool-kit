import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/constants/routes.dart';
import 'package:login/pages/controllers/login_controller.dart';
import 'package:login/pages/dashboard.dart';
import 'package:login/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset("assets/images/icon.png"),
                ),
                SizedBox(height: 10),
                Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff575DFB),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "login now to Track all your\nexpenses "
                  "and income at a place! ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 30),
                Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff575DFB), // Example: Blue border
                        width: 1.5, // Example: 2 pixels wide border
                      ),
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ), // Example: Rounded corners
                    ),
                    hintText: 'Ex:abc@exampl.com',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset("assets/images/Vector.png"),
                    ),
                    enabledBorder: textFieldBorder(),
                    disabledBorder: textFieldBorder(),
                    focusedBorder: textFieldBorder(),
                    errorBorder: textFieldBorder(),
                    focusedErrorBorder: textFieldBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter your email';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'please enter a valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                Text(
                  "Your password",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Obx(
                  () => TextFormField(
                    maxLength: 8,
                    obscureText: !controller.isPasswordVisible.value,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff575DFB), // Example: Blue border
                          width: 1.5, // Example: 2 pixels wide border
                        ),
                        borderRadius: BorderRadius.circular(
                          16.0,
                        ), // Example: Rounded corners
                      ),
                      hintText: '*********',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset("assets/images/password.png"),
                      ),
                      enabledBorder: textFieldBorder(),
                      disabledBorder: textFieldBorder(),
                      focusedBorder: textFieldBorder(),
                      errorBorder: textFieldBorder(),
                      focusedErrorBorder: textFieldBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.isPasswordVisible.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xff575DFB),
                        ),
                        onPressed:
                          controller.tooglePassword,

                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your password';
                      }
                      if (value.length < 8) {
                        return 'please enter of password 8 length';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.forgotPasswordPage);
                  },
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Color(0xff575DFB),
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff575DFB),
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('welcome')));
                      return;
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff575DFB),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Login",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Divider(height: 10, color: Color(0xff000000)),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.dashboard);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black, width: 1.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Logo.png"),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Don't have account?",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "Register",
                                style: TextStyle(
                                  color: Color(0xff575DFB),
                                  decoration: TextDecoration.underline,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.toNamed(Routes.registerPage);
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder textFieldBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff575DFB), // Example: Blue border
        width: 1.5, // Example: 2 pixels wide border
      ),
      borderRadius: BorderRadius.circular(16.0), // Example: Rounded corners
    );
  }
}
