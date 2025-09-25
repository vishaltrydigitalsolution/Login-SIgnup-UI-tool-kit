import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/grid_controller.dart';

class GridPage extends GetView<GridController> {
  @override
  Widget build(BuildContext context) {
    final GridController gridController = Get.put(GridController());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Grid page',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Obx(
        () => Padding(
          padding: EdgeInsets.all(1),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 3,
            ),

            itemCount: gridController.gridItems.length,
            itemBuilder: (context, index) {
              final item = controller.gridItems[index];
              return Card(
                color: Colors.black,
                elevation: 200,
                shadowColor: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red,fontSize: 20),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
