// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/constant/colors.dart';
import 'package:school_mob/sreens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        fontFamily: 'Camaro',
      ),
      //home: const SearchPage(),
      home: const SplashScreen(),
    );
  }
}
