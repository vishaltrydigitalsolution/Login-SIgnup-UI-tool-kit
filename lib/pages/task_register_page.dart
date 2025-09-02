import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/task_page.dart';
import 'controllers/task_controller.dart';
import 'models/task_model.dart';

class TaskRegisterPage extends StatelessWidget {
  final TaskController controller = Get.put(TaskController());

  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final projectController = TextEditingController();
  final detailController = TextEditingController();

  TaskRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Name",
                    icon: Icon(Icons.person),
                  ),
                  validator: (val) => val!.isEmpty ? "Enter Name" : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    labelText: "Description",
                    icon: Icon(Icons.description,),
                  ),
                  validator: (val) => val!.isEmpty ? "Enter description" : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: projectController,
                  decoration: const InputDecoration(
                    labelText: "Project",
                    icon: Icon(Icons.panorama_photosphere),
                  ),
                  validator: (val) => val!.isEmpty ? "Enter Project" : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: detailController,
                  decoration: const InputDecoration(
                    labelText: "Detail",
                    icon: Icon(Icons.details),
                  ),
                  validator: (val) => val!.isEmpty ? "Enter Project" : null,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                shadowColor: Colors.lightBlue,
                elevation: 8,
              ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    controller.addTask(
                      Task(
                        name: nameController.text,
                        description: descriptionController.text,
                        project: projectController.text,
                        detail: detailController.text,
                      ),
                    );
                    Get.to(() => TaskPage());
                  }
                },
                child: const Text("Submit",style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
