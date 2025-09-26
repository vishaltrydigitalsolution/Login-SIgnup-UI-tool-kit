import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/controllers/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(controller.user.value?.username ?? 'Profile',style: TextStyle(color: Colors.white),),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildProfileHeader(controller),
                  const SizedBox(height: 10),
                  _buildHighlights(controller),
                  const SizedBox(height: 10),
                  _buildPostGrid(controller),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

Widget _buildProfileHeader(ProfileController controller) {
  return Obx(() {
    final user = controller.user.value;
    if (user == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(user.profilePictureUrl),
          ),
          const SizedBox(height: 10),
          Text(
            user.username,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          Text(user.bio,style: TextStyle(color: Colors.white),),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatColumn('Post', user.post),
              _buildStatColumn('Following', user.following),
              _buildStatColumn('Following', user.following),
            ],
          ),
        ],
      ),
    );
  });
}

Widget _buildHighlights(ProfileController controller) {
  return Obx(() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.highlights.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(controller.highlights[index]),
            ),
          );
        },
      ),
    );
  });
}

Widget _buildPostGrid(ProfileController controller) {
  return Obx(() {
    if (controller.posts.isEmpty) {
      return const Center(child: Text("No posts yet",style: TextStyle(color: Colors.white),));
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.posts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        final post = controller.posts[index];
        return Image.asset(post.imageUrl, fit: BoxFit.cover);
      },
    );
  });
}

Widget _buildStatColumn(String label, int count) {
  return Column(
    children: [
      Text(
        count.toString(),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
      ),
      Text(label,style: TextStyle(color: Colors.white),),
    ],
  );
}
