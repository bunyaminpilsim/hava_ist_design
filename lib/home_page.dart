import 'package:flutter/material.dart';
import 'package:hava_ist2/config/app_colors.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      backgroundColor: AppColors.materialGreen,
      body: Container(
        color: AppColors.primaryColor,
      ),
    );
  }
}
