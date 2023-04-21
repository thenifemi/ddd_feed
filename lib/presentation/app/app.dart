import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../application/posts/posts_bloc.dart';
import '../../injection.dart';
import '../core/theme/theme.dart';
import '../core/widgets/app_bar.dart';
import '../home/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return BlocProvider(
      create: (context) => getIt<PostsBloc>()..add(GetPosts()),
      child: MaterialApp(
        title: 'Circle',
        debugShowCheckedModeBanner: false,
        theme: themeData,
        home: const Scaffold(
          appBar: AppAppBar(),
          body: HomeScreen(),
        ),
      ),
    );
  }
}
