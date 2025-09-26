// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:get/get.dart';
// import 'controllers/moder_controller.dart';
//
// class ModernPage extends StatelessWidget {
//   ModernPage({super.key});
//   final ModerController controller = Get.put(ModerController());
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 1,
//       length:4,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Moder UI"),
//           bottom: TabBar(
//             isScrollable: true,
//            controller: controller.tabController,
//            tabs: controller.myTabs,
//           ),
//         ),
//         body: Column(
//           children: [
//             SizedBox(
//               height: 600,
//               child: PageView.builder(
//                 itemCount: 4,
//                 // controller: PageController(initialPage: controller.tabController.index),
//                 // itemCount: controller.myTabs.length,
//                 // onPageChanged: (int index){
//                 //   controller.tabController.animateTo(index);
//                 // },
//                 itemBuilder: (context, index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey.shade200,
//                       borderRadius: BorderRadius.circular(20),
//                       image: DecorationImage(
//                         image: AssetImage(
//                           controller.Fruits[index]['image']!,
//                         ),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         gradient: LinearGradient(
//                           begin: Alignment.bottomRight,
//                           colors: [
//                             Colors.black.withOpacity(0.8),
//                             Colors.black.withOpacity(0.2),
//                           ],
//                         ),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               controller.Fruits[index]['name']!,
//                               style: GoogleFonts.lato(
//                                 color: Colors.white,
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(
//               height: 100,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: controller.Fruits.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
//                     child: Column(
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Colors.white,
//                           radius: 30,
//                           backgroundImage: AssetImage(
//                             controller.Fruits[index]['image']!,
//                           ),
//                         ),
//                         SizedBox(height: 6),
//                         Text(controller.Fruits[index]['name']!),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//
//
//           ],
//         ),
//
//       ),
//     );
//   }
// }
