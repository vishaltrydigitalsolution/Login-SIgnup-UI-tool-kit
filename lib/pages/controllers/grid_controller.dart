import 'package:get/get.dart';
class GridController extends GetxController{
  final RxList<GridItem>gridItems=<GridItem>[].obs;

  @override
  void onInit(){
    super.onInit();
    gridItems.addAll([
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=1', title: 'Item 1'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=2', title: 'Item 2'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=3', title: 'Item 3'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=4', title: 'Item 4'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=5', title: 'Item 5'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=6', title: 'Item 6'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=7', title: 'Item 7'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=8', title: 'Item 8'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=9', title: 'Item 9'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=11', title: 'Item 11'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=12', title: 'Item 12'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=13', title: 'Item 13'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=1', title: 'Item 1'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=2', title: 'Item 2'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=3', title: 'Item 3'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=4', title: 'Item 4'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=5', title: 'Item 5'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=6', title: 'Item 6'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=7', title: 'Item 7'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=8', title: 'Item 8'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=9', title: 'Item 9'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=11', title: 'Item 11'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=12', title: 'Item 12'),
      GridItem(imageUrl: 'https://picsum.photos/200/300?random=13', title: 'Item 13'),

    ]);
  }
}

class GridItem {
  final String imageUrl;
  final String title;

  GridItem({required this.imageUrl, required this.title});
}
