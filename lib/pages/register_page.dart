import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/constants/routes.dart';
import 'package:get/get.dart';
import 'package:email_validator/email_validator.dart';
import 'package:login/pages/controllers/register_controller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:country_code_picker/country_code_picker.dart';

class RegisterPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  RegisterPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final RegisterController controller = Get.put(RegisterController());
  final ImagePicker picker = ImagePicker();
  final Rxn<XFile> image = Rxn<XFile>();

  Future<String?> pickImage() async {
    final XFile? pickedImage = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if(pickedImage==null){
      Get.snackbar("Error", "No image selected");
    }
    image.value = pickedImage;
    return pickedImage?.path;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          textAlign: TextAlign.start,
          "Register",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Color(0xff575DFB),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset("assets/images/icon.png",height: 100,width: 100,)
        ),
        actions: [
          IconButton(
            onPressed: pickImage,
            icon: const Icon(Icons.photo, size: 25, color: Color(0xff575DFB)),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUnfocus,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: image.value != null
                          ? FileImage(File(image.value!.path))
                          : null,
                      backgroundColor: Colors.white,
                    ),

                  ),
                ),
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
                  controller: _nameController,
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
                SizedBox(height: 20),
                Text("Surname"),
                TextFormField(
                  controller: _lastnameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF575DFB),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    prefixIcon: Icon(
                      Icons.person_add,
                      color: Color(0XFF575DFB),
                    ),
                    hintText: "Enter your surname",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Text("Mobile no."),
                TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: _mobileController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF575DFB),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    prefixIcon: CountryCodePicker(
                      onChanged: (country) {},
                      initialSelection: 'IN',
                      favorite: const ['+91', 'IN'],
                      showCountryOnly: false,
                      showOnlyCountryWhenClosed: false,
                      alignLeft: false,
                    ),
                    hintText: "Enter mobile no.",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your mobile no.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                Text(
                  "Your password",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Obx(
                  () => TextFormField(
                    maxLength: 15,
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
                          controller.togglePassword();
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
               // const SizedBox(height: 10),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      controller.multiPartAPI(
                        _nameController.text,
                        _lastnameController.text,
                        _mobileController.text,
                        _emailController.text,
                        _passwordController.text,
                        image.value?.path,
                      );
                    }
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
               // const SizedBox(height: 20),
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
      borderSide: BorderSide(color: Color(0xff575DFB), width: 2),
      borderRadius: BorderRadius.circular(16.0),
    );
  }
}
