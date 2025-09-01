import 'package:get/get.dart';
class UserModel {
  final String username;
  final String bio;
  final String profilePictureUrl;
  final int followers;
  final int following;

  UserModel({
    required this.username,
    required this.bio,
    required this.profilePictureUrl,
    required this.followers,
    required this.following,
  });
}

class PostModel {
  final String imageUrl;
  PostModel({required this.imageUrl});
}

class ProfileController extends GetxController {

  var isLoading = true.obs;
  var user = Rxn<UserModel>();
  var posts = <PostModel>[].obs;
  var highlights = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProfileData();
  }
  void fetchProfileData() async {
    await Future.delayed(const Duration(seconds: 2));

    user.value = UserModel(
      username: "thevicstyles",
      bio: "Nature lover 💙 | Coffee ☕ | Space",
      profilePictureUrl:
      "https://i.pravatar.cc/150?img=3",
      followers: 1200,
      following: 340,
    );

    highlights.value = [
      "https://i.pravatar.cc/150?img=5",
      "https://i.pravatar.cc/150?img=6",
      "https://i.pravatar.cc/150?img=7",
    ];

    posts.value = List.generate(
      12,
          (index) => PostModel(
        imageUrl: "https://picsum.photos/200?random=$index",
      ),
    );

    isLoading.value = false;
  }
}
