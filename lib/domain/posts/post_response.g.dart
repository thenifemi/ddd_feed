// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostsResponseAdapter extends TypeAdapter<PostsResponse> {
  @override
  final int typeId = 0;

  @override
  PostsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostsResponse(
      posts: (fields[0] as List).cast<Post>(),
    );
  }

  @override
  void write(BinaryWriter writer, PostsResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.posts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PostAdapter extends TypeAdapter<Post> {
  @override
  final int typeId = 1;

  @override
  Post read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Post(
      id: fields[0] as int,
      name: fields[1] as String,
      handle: fields[2] as String,
      time: fields[3] as DateTime,
      content: fields[4] as String,
      image: fields[5] as String?,
      likes: fields[6] as int,
      comments: fields[7] as int,
      dislikes: fields[8] as int,
      isVerified: fields[9] as bool,
      liked: fields[10] as bool,
      disliked: fields[11] as bool,
      bookmarked: fields[12] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Post obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.handle)
      ..writeByte(3)
      ..write(obj.time)
      ..writeByte(4)
      ..write(obj.content)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.likes)
      ..writeByte(7)
      ..write(obj.comments)
      ..writeByte(8)
      ..write(obj.dislikes)
      ..writeByte(9)
      ..write(obj.isVerified)
      ..writeByte(10)
      ..write(obj.liked)
      ..writeByte(11)
      ..write(obj.disliked)
      ..writeByte(12)
      ..write(obj.bookmarked);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
