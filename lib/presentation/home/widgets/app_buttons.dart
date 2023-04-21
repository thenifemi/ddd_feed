import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/colors/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onPressed,
    required this.child,
  });

  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        HapticFeedback.mediumImpact();
        onPressed?.call();
      },
      style: TextButton.styleFrom(
        backgroundColor: AppColors.greyDark.withOpacity(0.06),
        foregroundColor: AppColors.greyDark,
      ),
      child: child,
    );
  }
}
