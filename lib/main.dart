import 'package:flutter/material.dart';
import 'package:fika_app/screens/home_page.dart';
import 'package:fika_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fika Errands',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const SplashScreen(),
    );
  }
}
