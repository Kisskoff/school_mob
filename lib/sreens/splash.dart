// ignore: camel_case_types
// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/components/button.dart';
import 'package:school_mob/components/text.dart';
import 'package:school_mob/constant/colors.dart';
import 'package:school_mob/sreens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: primary,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              textBold(
                text: 'Welcome'.toUpperCase(),
                size: 35,
                textColor: blanc,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: blanc),
                child: textBold(
                  text: 'to',
                  size: 35,
                  textColor: primary,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              textBold(
                text: 'learning'.toUpperCase(),
                size: 40,
                textColor: blanc,
              ),
              const SizedBox(
                height: 90,
              ),
              buttonCustom(
                tap: () {
                  navigate();
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const MyHomePage(),
                  //   ),
                  // );
                },
                text: ' Continuer'.toUpperCase(),
                textColor: primary,
                color: blanc,
                btncolor: primary,
                //iconColor: blanc
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigate() {
    //
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
        (route) => false,
      );
    });
  }
}
