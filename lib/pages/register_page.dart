import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:login/constants/routes.dart';
import 'package:get/get.dart';
import 'package:email_validator/email_validator.dart';
import 'package:login/pages/controllers/register_controller.dart';
import 'package:login/pages/register_verification.dart';

class RegisterPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  RegisterPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _yourController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final RegisterController controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            // autovalidateMode: AutovalidateMode.,
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
                  "Register",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff575DFB),
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: 'Create an ',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'account',
                        style: TextStyle(
                          color: Color(0xff575DFB),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                            text:
                                ' to access all the '
                                'feature of ',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: 'Maxpense!',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Ex:abc@wxample.com',
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
                      return 'Enter your email';
                    }
                    if (!EmailValidator.validate(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  "Your Name",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                TextFormField(
                  controller: _yourController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue, // Example: Blue border
                        width: 2.0, // Example: 2 pixels wide border
                      ),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ), // Example: Rounded corners
                    ),
                    hintText: 'EX:Saul Ramirez',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset("assets/images/face.png"),
                    ),
                    enabledBorder: textFieldBorder(),
                    disabledBorder: textFieldBorder(),
                    focusedBorder: textFieldBorder(),
                    errorBorder: textFieldBorder(),
                    focusedErrorBorder: textFieldBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter you name';
                    }
                    if (value.length < 3) {
                      return 'name must be at least 3 character ';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  "Your password",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Obx(
                  () => TextFormField(
                    maxLength: 8,
                    controller: _passwordController,
                    obscureText: !controller.isPasswordVisible.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff575DFB), // Example: Blue border
                          width: 1.5, // Example: 2 pixels wide border
                        ),
                        borderRadius: BorderRadius.circular(
                          10.0,
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
                        onPressed: () {
                          controller.tooglePassword();
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your password';
                      }
                      if (value.length < 8) {
                        return 'Enter password of 8 length';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterVerification(),
                        ),
                      );
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('welcome')));
                      return;
                    }
                    // Get.toNamed('/registerVerification',arguments: {"dataKey":_passwordController});
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff575DFB),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Register",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Divider(
                // height: 10,
                // ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: "Login",
                            style: TextStyle(
                              color: Color(0xff575DFB),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(Routes.loginPage);
                              },
                          ),
                        ],
                      ),
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
      borderSide: BorderSide(color: Color(0xff575DFB), width: 1.5),
      borderRadius: BorderRadius.circular(16.0),
    );
  }
}
