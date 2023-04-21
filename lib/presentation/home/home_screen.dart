import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'activity/activity_screen.dart';
import 'posts/posts_screen.dart';
import 'widgets/bottom_nav.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState<int>(0);

    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex.value,
          children: const [
            PostsScreen(),
            ActivityScreen(),
          ],
        ),
        bottomNavigationBar: BottomNav(
          currentIndex: currentIndex.value,
          onPressed: (index) {
            currentIndex.value = index;
          },
        ),
      ),
    );
  }
}
