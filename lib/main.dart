import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'injection.dart';
import 'presentation/app/app.dart';
import 'register_adapters.dart';

Future<void> main() async {
  //Preserve the native splash screen
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //Set the orientation of the application to portrait
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  //Configure injectable dependencies necessary for the application
  configureDependencies();

  //Initialize Hive (for local storage)
  await Hive.initFlutter();
  registerAdapters();

  runApp(const App());
}
