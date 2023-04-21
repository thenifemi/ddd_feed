import 'package:flutter/material.dart';

import '../../core/theme/theme.dart';

class ErrorFeed extends StatelessWidget {
  const ErrorFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "An Error Occurred",
        style: themeData.textTheme.displaySmall,
      ),
    );
  }
}
