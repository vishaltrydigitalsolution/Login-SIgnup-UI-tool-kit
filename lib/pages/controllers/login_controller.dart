
import 'package:get/get.dart';
class LoginController extends GetxController{
  var isPasswordVisible =false.obs;
  void tooglePassword(){
    isPasswordVisible.value=!isPasswordVisible.value;
  }
}