import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import '../../home/widgets/action_button.dart';
import '../colors/colors.dart';
import '../theme/theme.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ActionButton(
            heroIcons: HeroIcons.userCircle,
            heroIconStyle: HeroIconStyle.outline,
          ),
          Text(
            'CIRCLE',
            style: themeData.textTheme.titleLarge,
          ),
          const ActionButton(
            heroIcons: HeroIcons.bellAlert,
            heroIconStyle: HeroIconStyle.outline,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
