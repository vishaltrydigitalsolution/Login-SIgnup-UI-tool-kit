import 'package:get/get.dart';
class User {
  final String id;
  final String username;
  final String fullName;
  final String bio;
  final String profilePictureUrl;
  final RxInt followers;
  final int following;
  final RxBool isFollowed;

  User({
    required this.id,
    required this.username,
    required this.fullName,
    required this.bio,
    required this.profilePictureUrl,
    required int followers,
    required this.following,
  }) : followers = followers.obs,
        isFollowed = false.obs;
}