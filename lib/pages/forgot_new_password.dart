import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/login_page.dart';

class ForgotNewPassword extends StatelessWidget {
  ForgotNewPassword({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _newpassword = TextEditingController();

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
                SizedBox(height: 30),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff575DFB),
                    fontSize: 32,
                  ),
                ),
                Text(
                  "Set your new password to login into\n your account! ",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                const SizedBox(height: 30),
                Text(
                  "Enter new password",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  maxLength: 8,
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
                      padding: const EdgeInsets.only(right: 16),
                      child: Image.asset("assets/images/password.png"),
                    ),
                    enabledBorder: textFieldBorder(),
                    disabledBorder: textFieldBorder(),
                    focusedBorder: textFieldBorder(),
                    errorBorder: textFieldBorder(),
                    focusedErrorBorder: textFieldBorder(),
                  ),
                  validator: (Value) {
                    if (Value == null || Value.isEmpty) {
                      return 'enter your new password ';
                    }
                    if (Value.length < 8) {
                      return 'password should be 8';
                    }
                  }
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('welcome')));
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
                          "Confirm",
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
