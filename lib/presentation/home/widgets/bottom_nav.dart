import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../../core/constants/app_sizes.dart';
import '../create_post/create_post_screen.dart';
import 'action_button.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onPressed,
  });

  final int currentIndex;
  final void Function(int index)? onPressed;

  @override
  Widget build(BuildContext context) {
    List bottomNavBarItems = [
      {
        'index': 0,
        'icon': HeroIcons.rectangleStack,
      },
      {
        'index': 1,
        'icon': HeroIcons.bolt,
      },
      {
        'index': 2,
        'icon': HeroIcons.pencilSquare,
      },
    ];

    return Container(
      padding: const EdgeInsets.only(
        top: AppSizes.xsm,
        left: AppSizes.md,
        right: AppSizes.md,
      ),
      child: Row(
        children: bottomNavBarItems
            .map(
              (item) => Expanded(
                child: ActionButton(
                  onTap: () {
                    item['index'] != 2
                        ? onPressed?.call(item['index'])
                        : Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const CreatePostScreen(),
                            ),
                          );
                  },
                  heroIcons: item['icon'],
                  heroIconStyle: currentIndex == bottomNavBarItems.indexOf(item)
                      ? HeroIconStyle.solid
                      : HeroIconStyle.outline,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
