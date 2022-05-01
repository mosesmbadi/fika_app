import 'package:flutter/material.dart';
import 'package:fika_app/screens/home_page.dart';
import 'package:fika_app/login/SignUpPage.dart';
import 'package:fika_app/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
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
        primarySwatch: Colors.orange,
      ),
      home: const SignUpPage(),
    );
  }
}
