import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/controllers/task_controller.dart';
class TaskPage extends StatelessWidget {
  final TaskController controller = Get.find();
  TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Page")),
      body: Obx(() {
        if (controller.tasks.isEmpty) {
          return const Center(child: Text("No tasks registered yet"));
        }
        return ListView.builder(
          itemCount: controller.tasks.length,
          itemBuilder: (context, index) {
            final task = controller.tasks[index];
            return Card(
              child: ListTile(
                title: Text(task.name),
                subtitle: Text("${task.description} | Project: ${task.project}"),
              ),
            );
          },
        );
      }),
    );
  }
}
