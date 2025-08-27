import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:email_validator/email_validator.dart';
import 'package:login/pages/forgot_password_verification.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();

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
                  child: Image.asset('assets/images/icon.png'),
                ),
                SizedBox(height: 25),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff575DFB),
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Recover your password if you have \nforgot the password!",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _emailController,

                  decoration: InputDecoration(
                    hintText: 'Ex:abc@gmail.com',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff575DFB), // Example: Blue border
                        width: 1.5, // Example: 2 pixels wide border
                      ),
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ), // Example: Rounded corners
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 5),
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
                      return 'enter your email';
                    }
                    if (!EmailValidator.validate(value)) {
                      return 'enter a valid email';
                    }
                  },
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordVerification()),);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('welcome')));
                      return;
                    }
                  },
                  child: Container(
                    height: 56,
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
                          "Submit",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
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
