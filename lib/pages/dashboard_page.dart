import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/constants/routes.dart';
import 'controllers/dashborad_controller.dart';

class DashboardPage extends GetView<DashboradController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboradController());
    return Obx(() {
      var sizedBox = SizedBox(height: 10,);
      return Scaffold(
         appBar: AppBar(backgroundColor: Colors.black,
         ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Scaffold.of(context).openDrawer();
                        },
                        child: const CircleAvatar(
                          radius: 24,
                           backgroundImage: AssetImage('assets/images/imas.png'),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' ${controller.userName.value.toString()}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),

                          Text(
                            ' ${controller.bio.value.toString()}',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.notification_add, color: Colors.white),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(controller.daysInMonth, (index) {
                        final today = DateTime.now().day;
                        return Container(
                          margin: const EdgeInsets.all(2),
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: index + 1 == today
                                ? Colors.orange
                                : Colors.grey[900],
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Text(
                            '${index + 1}\n${DashboradController.monthNames[controller.month - 1]}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '${controller.consumed.value} kcal',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            'Consumed',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircularProgressIndicator(
                          strokeWidth: 12,
                          backgroundColor: Colors.grey[850],
                          value: controller.progress.value,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Colors.orange,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '${controller.remaining.value} kcal',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            'Remaining',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Food logo',
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ),
                ),

                Column(
                  children: controller.foodList.map((food) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(1),
                            child: Image.asset(
                              food["image"]!,
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 200,
                                child: Text(
                                  food["name"]!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                  ),
                                ),
                              ),
                              Text(
                                food["cal"]!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.orange,
                            weight: 100,

                            size: 20,
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Akazha",style: TextStyle(color: Colors.white,fontSize: 22,),),
                accountEmail: Row(
                  children: [
                    Text("akazha@gmail.com",style: TextStyle(color: Colors.white,fontSize: 18),),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Scaffold.of(context).isDrawerOpen;
                      },
                        child: Icon(Icons.arrow_drop_down,color: Colors.white,size: 30,)),
                  ],
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/AkazaPicture.png"),
                ),
                decoration: BoxDecoration(
                  color: Colors.black
                ),
              ),

              Column(
                children: [
                  ListTile(
                    splashColor: Colors.redAccent,
                    onTap: () {
                      Get.toNamed(Routes.pages);
                    },
                    leading: Icon(
                      Icons.file_copy,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "My Files",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                 sizedBox,
                  ListTile(
                    splashColor: Colors.redAccent,
                    onTap: () {},
                    leading: Icon(Icons.person, size: 30, color: Colors.white),
                    title: Text(
                      "Shared with me",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  sizedBox,
                  ListTile(
                    splashColor: Colors.redAccent,
                    onTap: () {},
                    leading: Icon(Icons.star, size: 30, color: Colors.white),
                    title: Text(
                      "Starred",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  sizedBox,
                  ListTile(
                    splashColor: Colors.redAccent,
                    onTap: () {},
                    leading: Icon(
                      Icons.recent_actors,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Recent",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  sizedBox,
                  ListTile(
                    splashColor: Colors.redAccent,
                    onTap: () {},
                    leading: Icon(
                      Icons.offline_bolt,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Offline",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  sizedBox,
                  ListTile(
                    splashColor: Colors.redAccent,
                    onTap: () {},
                    leading: Icon(Icons.upload, size: 30, color: Colors.white),
                    title: Text(
                      "Uploads",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  sizedBox,
                  ListTile(
                    splashColor: Colors.redAccent,
                    onTap: () {},
                    leading: Icon(Icons.backup, size: 30, color: Colors.white),
                    title: Text(
                      "Backups",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  sizedBox,
                  ListTile(
                    splashColor: Colors.redAccent,
                    onTap: () {
                      // Get.toNamed(Routes.profile);
                    },
                    leading: Icon(Icons.person_off, size: 30, color: Colors.white),
                    title: Text(
                      "Profile",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  sizedBox,
                  ListTile(
                    splashColor: Colors.redAccent,
                    onTap: () {
                      // Get.toNamed(Routes.profile);
                    },
                    leading: Icon(Icons.logout, size: 30, color: Colors.white),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black87,
          onPressed: () {},
          child: IconButton(
            onPressed: () {
              Get.toNamed(Routes.taskRegisterPage);
            },
            icon: Icon(Icons.add, color: Colors.red, size: 35),
          ),
        ),
      );
    });
  }
}
