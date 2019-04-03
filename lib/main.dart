import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:fultter_liuying/app.dart';
import 'package:fultter_liuying/splash_screen.dart';
import 'package:fultter_liuying/loading.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "我的flutter",
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "app": (BuildContext context) => new App(),
        "splash": (BuildContext content) => new SplashScreen(),
      },
      home: new LoadingPage(),
    );
  }
}
