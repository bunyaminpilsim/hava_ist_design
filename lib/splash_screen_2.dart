import 'package:flutter/material.dart';
import 'package:hava_ist2/config/app_colors.dart';
import 'package:hava_ist2/home_page.dart';

class SplashScreen2 extends StatefulWidget {
  SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  Future afterSplash() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
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
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image(
                image: AssetImage("assets/splash2.png"),
                fit: BoxFit.contain,
                width: 150,
              ),
              SizedBox(
                height: 15,
              ),
              Image(
                image: AssetImage("assets/splash.png"),
                fit: BoxFit.contain,
                height: 230,
              ),
            ],
          ),
        ));
  }
}
