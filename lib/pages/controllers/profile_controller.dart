import 'package:get/get.dart';
class UserModel {
  final String username;
  final String bio;
  final String profilePictureUrl;
  final int followers;
  final int following;
  final int post;

  UserModel({
    required this.username,
    required this.bio,
    required this.profilePictureUrl,
    required this.followers,
    required this.following,
    required this.post,
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
    await Future.delayed(const Duration(seconds: 0));

    user.value = UserModel(
      username: "Zentusu",
      bio: "Demons layer",
      profilePictureUrl:
      "assets/images/aaaa.png",
      followers: 1200,
      following: 340,
      post: 12,
    );

    highlights.value = [
      "assets/images/ahaha.png" ,
      "assets/images/ahaha.png" ,
      "assets/images/ahaha.png" ,
      "assets/images/ahaha.png" ,
      "assets/images/ahaha.png" ,
      "assets/images/ahaha.png" ,
    ];

    posts.value = List.generate(
      12,
          (index) => PostModel(
       imageUrl: "assets/images/ahaha.png",
      ),
    );

  }
}
