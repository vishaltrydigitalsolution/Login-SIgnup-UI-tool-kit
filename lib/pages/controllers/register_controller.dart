import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide MultipartFile, FormData;
import 'package:http_parser/http_parser.dart' as http_parser;


import 'package:login/constants/routes.dart';

class RegisterController extends GetxController {
  var isPasswordVisible = false.obs;
  final Dio dio = Dio();
  final url = "http://157.173.218.220:5007/auth/user_registration";
  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<void> multiPartAPI(
    String firstname,
    String lastname,
    String contact,
    String email,
    String password,
    String? imageFile,
  ) async {
    try {
      FormData formData = FormData.fromMap({
        "firstname": firstname,
        "lastname": lastname,
        "contact":contact,
        "email": email,
        "country_code": '+91',
        "country_flag": 'IN',
        "password": password,
        "profile_pic": await MultipartFile.fromFile(
          imageFile!,
          filename: imageFile.split('/').last, // Extract filename
          contentType: http_parser.MediaType('image', 'jpeg'), // Optional: specify content type
        ),
      });

      final response = await dio.post(url, data:formData);
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(
          Get.context!,
        ).showSnackBar(SnackBar(content: Text(response.data["message"])));
        Get.offAllNamed(Routes.dashboard);
      } else if (response.statusCode == 201) {
        ScaffoldMessenger.of(
          Get.context!,
        ).showSnackBar(SnackBar(content: Text(response.data["message"])));
      }
    } on DioException catch (e) {
      ScaffoldMessenger.of(
        Get.context!,
      ).showSnackBar(SnackBar(content: Text("")));
    }
  }
}
