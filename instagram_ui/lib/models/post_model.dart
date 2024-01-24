
class PostModel {
  final String caption;
  final int postedBy;
  final String username;
  final bool isVerified;
  final String profileImage;
  final String imageUrl; 
  final String? videoUrl;
  final int likeCount;
  final bool isLiked;
  final int commentCount;
  final bool isSaved;
  PostModel({
    required this.caption,
    required this.postedBy,
    required this.username,
    required this.isVerified,
    required this.profileImage,
    required this.imageUrl,
    this.videoUrl,
    required this.likeCount,
    required this.isLiked,
    required this.commentCount,
    required this.isSaved,
  });

}
