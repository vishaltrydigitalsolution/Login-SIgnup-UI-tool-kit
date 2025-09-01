import 'package:get/get.dart';

class DashboradController extends GetxController {
  final int year = DateTime.now().year;
  final int month = DateTime.now().month;
  static const List<String> monthNames = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "June",
    "July",
    "Aug",
    "Sept",
    "Oct",
    "Nov",
    "Dec",
  ];

  int get daysInMonth {
    return DateTime(year, month + 1, 0).day;
  }

  final userName = " Hey! Mr.Fugazi".obs;
  final bio ="Ready to conquer today".obs;
  final consumed = 1456.obs;
  final remaining = 2875.obs;
  final progress = 0.75.obs;
  final profile =[{"image":"assets/images/image.png"}].obs;

  final foodList = [
    {"name": "Burger", "cal": "350 cal", "image": "assets/images/potato.png"},
    {"name": "Pizza", "cal": "369 cal", "image": "assets/images/pizza.png"},
    {"name": "Fries", "cal": "200 cal", "image": "assets/images/fries.png"},
    {"name": "Maxican Food", "cal": "600 cal", "image": "assets/images/maxican.png",},
    {"name": "Burger", "cal": "350 cal", "image": "assets/images/potato.png"},
    {"name": "Burger", "cal": "350 cal", "image": "assets/images/potato.png"},
    {"name": "Burger", "cal": "350 cal", "image": "assets/images/potato.png"},
    {"name": "Burger", "cal": "350 cal", "image": "assets/images/potato.png"},
    {"name": "Burger", "cal": "350 cal", "image": "assets/images/potato.png"},
  ].obs;
}
