import 'package:hive/hive.dart';

import 'domain/posts/post_response.dart';

void registerAdapters() {
  Hive.registerAdapter(PostsResponseAdapter());
  Hive.registerAdapter(PostAdapter());
}
