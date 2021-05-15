import 'dart:io';

import 'package:book_my_shot/util/functions.dart';
import 'package:book_my_shot/util/painter.dart';
import 'package:book_my_shot/view/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (details) {
    FlutterError.dumpErrorToConsole(details);
  };

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Painter.gray300),
  );

  Directory document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);

  await Hive.openBox('store');

  runApp(BookMyShotApp());
}

class BookMyShotApp extends StatelessWidget {
  final AppRouter _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: getThemeData(),
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(),
      color: Painter.gray100,
      title: 'BookMyShot',
      restorationScopeId: 'root',
    );
  }
}
