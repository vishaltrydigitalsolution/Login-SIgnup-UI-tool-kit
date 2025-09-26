import 'package:get/get.dart';
class GridController extends GetxController{
  final RxList<GridItem>gridItems=<GridItem>[].obs;
  @override
  void onInit(){
    super.onInit();
    gridItems.addAll([
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/kkkk.png" , title:"Item 1"),
      GridItem(image:"assets/images/agatsuma.png" , title:"agatsuma"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/imas.png" , title:"Akaza"),
      GridItem(image:"assets/images/nezuko.png" , title:"neuko"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/slayer.png" , title:"Slayer"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/akza.png.png" , title:"Item 1"),
      GridItem(image:"assets/images/ahaha.png" , title:"Item 1"),
      GridItem(image:"assets/images/AkazaPicture.png" , title:"Item 1"),
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
