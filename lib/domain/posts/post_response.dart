import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'post_response.g.dart';

PostsResponse postsResponseFromJson(String str) =>
    PostsResponse.fromJson(json.decode(str));

String postsResponseToJson(PostsResponse data) => json.encode(data.toJson());

@HiveType(typeId: 0)
class PostsResponse extends HiveObject {
  PostsResponse({
    required this.posts,
  });

  @HiveField(0)
  final List<Post> posts;

  factory PostsResponse.fromJson(Map<String, dynamic> json) => PostsResponse(
        posts: List<Post>.from(
          json["posts"].map(
            (x) => Post.fromJson(x),
          ),
        ),
      );

  Map<String, dynamic> toJson() => {
        "posts": List<dynamic>.from(posts.map((x) => x.toJson())),
      };

  factory PostsResponse.empty() => PostsResponse(posts: []);
}

@HiveType(typeId: 1)
class Post extends HiveObject {
  Post({
    required this.id,
    required this.name,
    required this.handle,
    required this.time,
    required this.content,
    this.image,
    required this.likes,
    required this.comments,
    required this.dislikes,
    required this.isVerified,
    required this.liked,
    required this.disliked,
    required this.bookmarked,
  });

  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String handle;
  @HiveField(3)
  final DateTime time;
  @HiveField(4)
  final String content;
  @HiveField(5)
  final String? image;
  @HiveField(6)
  int likes;
  @HiveField(7)
  int comments;
  @HiveField(8)
  int dislikes;
  @HiveField(9)
  final bool isVerified;
  @HiveField(10)
  bool liked;
  @HiveField(11)
  bool disliked;
  @HiveField(12)
  bool bookmarked;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        name: json["name"],
        handle: json["handle"],
        time: DateTime.parse(json["time"]),
        content: json["content"],
        image: json["image"],
        likes: json["likes"],
        comments: json["comments"],
        dislikes: json["dislikes"],
        isVerified: json["is_verified"],
        liked: json["liked"],
        disliked: json["disliked"],
        bookmarked: json["bookmarked"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "handle": handle,
        "time": time.toIso8601String(),
        "content": content,
        "image": image,
        "likes": likes,
        "comments": comments,
        "dislikes": dislikes,
        "is_verified": isVerified,
        "liked": liked,
        "disliked": disliked,
        "bookmarked": bookmarked,
      };
}
