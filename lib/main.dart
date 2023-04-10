import 'package:flutter/material.dart';
import 'package:trustwallet_clone/pages/main_page/main_page_view.dart';
import 'package:trustwallet_clone/splashscreen/splash.dart';

import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App',
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/MainPage': (BuildContext context) => new MainPage(),
      },
    );
  }
}
