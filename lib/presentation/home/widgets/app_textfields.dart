import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/theme/theme.dart';

class AppTextfield extends StatelessWidget {
  const AppTextfield({
    this.onChanged,
    this.controller,
    this.hintText,
    super.key,
  });

  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: true,
      onChanged: onChanged,
      cursorColor: AppColors.greyDark,
      maxLines: 5,
      textCapitalization: TextCapitalization.sentences,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: themeData.textTheme.bodyMedium?.copyWith(
          color: AppColors.greyDark.withOpacity(0.6),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        fillColor: AppColors.greyDark.withOpacity(0.08),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyDark,
            width: 0.6,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyDark,
            width: 1.2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      keyboardType: TextInputType.text,
      style: themeData.textTheme.bodyMedium,
    );
  }
}
