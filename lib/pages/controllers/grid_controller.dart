import 'package:get/get.dart';
class GridController extends GetxController{
  final RxList<GridItem>gridItems=<GridItem>[].obs;
  @override
  void onInit(){
    super.onInit();
    gridItems.addAll([
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/kkkk.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/imas.png" , title:"Akaza"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/jjjjj.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/akaza.png" , title:"Akaza"),

    ]);
  }
}

class GridItem {
  final String image;
  final String title;

  GridItem({required this.image, required this.title});
}
