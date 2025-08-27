import 'package:get/get.dart';
import 'package:login/constants/routes.dart';
class DashboradController extends GetxController{

  @override
  void onInit() {

    super.onInit();
  }
  @override
  void dispose() {
    super.dispose();
  }
  void nextPage() {
    Get.toNamed(Routes.loginPage);
  }
    var selecttabIndex= 0.obs;
    void changeTabIndex(int index){
      selecttabIndex.value =index;
    }


}

