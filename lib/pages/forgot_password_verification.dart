import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login/constants/routes.dart';
import 'package:login/pages/forgot_new_password.dart';

class ForgotPasswordVerification extends StatelessWidget {
  ForgotPasswordVerification({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _codeController = TextEditingController();

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
                SizedBox(height: 30),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff575DFB),
                  ),
                ),
                const SizedBox(height: 10),

                Text(
                  'We have sent an email to your email\n account with a verification code !',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 30),
                Text(
                  "Verification Code",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
                const SizedBox(height: 5),

                TextFormField(
                  maxLength: 6,
                  controller: _codeController,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  decoration: InputDecoration(
                    hintText: "Ex:123456",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff575DFB), // Example: Blue border
                        width: 1.5, // Example: 2 pixels wide border
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                    ),
                    enabledBorder: textFieldBorder(),
                    disabledBorder: textFieldBorder(),
                    focusedBorder: textFieldBorder(),
                    errorBorder: textFieldBorder(),
                    focusedErrorBorder: textFieldBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter verification code';
                    }
                    if (value.length<6) {
                      return 'enter correct code';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotNewPassword()),);
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
                          "Submit",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                //const SizedBox(height: 20,),
                //Divider(
                //height: 10,
                //),
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
