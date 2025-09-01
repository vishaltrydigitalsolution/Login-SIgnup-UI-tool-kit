import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/grid_controller.dart';

class GridPage extends GetView<GridController> {
  @override
  Widget build(BuildContext context) {
    final GridController gridController = Get.put(GridController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Grid page'),
        backgroundColor: Colors.white,
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
                elevation: 200,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(item.imageUrl, fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        item.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
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
