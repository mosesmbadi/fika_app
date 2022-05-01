import 'dart:async';

// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fika_app/screens/home_page.dart';
import 'package:transparent_image/transparent_image.dart';

// import 'package:kptm_social_media_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1200), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFE800),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(left: 70, right: 70),
            width: double.infinity,
            height: 120,
            child: FadeInImage(
                fadeOutDuration: const Duration(milliseconds: 100),
                placeholder: MemoryImage(kTransparentImage),
                image: AssetImage('assets/images/launch_icon.png')),
          ),
        ));
  }
}
