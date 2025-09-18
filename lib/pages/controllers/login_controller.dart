import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

import '../../constants/routes.dart';
import '../models/login_model.dart';

class LoginController extends GetxController {
  var isPasswordVisible = false.obs;
  final Dio dio = Dio();

  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<Login?> login(String email, String password) async {
    try {
      final response = await dio.post(
        'http://157.173.218.220:5007/auth/user_login',
        data: {'email': email, 'password': password},
      );
      if (response.statusCode == 200) {
        final loginData = Login.fromJson(response.data);
        ScaffoldMessenger.of(Get.context!,
        ).showSnackBar(SnackBar(content: Text(response.data['message'])));
        Get.offAllNamed(Routes.dashboard);
        print(response.data);
        return loginData;
      }


    } on DioException catch (e) {
      ScaffoldMessenger.of(
        Get.context!,
      ).showSnackBar(SnackBar(content: Text(e.response?.data["message"])));
    }
  }
}
