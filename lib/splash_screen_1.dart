import 'package:flutter/material.dart';
import 'package:hava_ist2/config/app_colors.dart';
import 'package:hava_ist2/splash_screen_2.dart';

class SplashScreen1 extends StatefulWidget {
  SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  Future afterSplash() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen2()));
  }

  @override
  void initState() {
    afterSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: const Center(
          child: Image(
            image: AssetImage("assets/main_splash.png"),
            fit: BoxFit.contain,
            width: 200,
          ),
        ));
  }
}
