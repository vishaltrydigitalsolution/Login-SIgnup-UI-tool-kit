import 'package:get/get.dart';
class RegisterController extends GetxController{
  var isPasswordVisible =false.obs;
  void tooglePassword(){
    isPasswordVisible.value=!isPasswordVisible.value;
  }
}