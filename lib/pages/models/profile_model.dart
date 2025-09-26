class UserModel {
  final String username;
  final String bio;
  final String profilePictureUrl;
  final int followers;
  final int following;
  final int post;
  String?image;

  UserModel({
    required this.username,
    required this.bio,
    required this.profilePictureUrl,
    required this.followers,
    required this.following,
    required this.post,
    required this.image,
  });

}