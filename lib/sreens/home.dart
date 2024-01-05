// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/constant/colors.dart';
import 'package:school_mob/sreens/accueil.dart';
import 'package:school_mob/sreens/etudiant.dart';
import 'package:school_mob/sreens/inscription.dart';
import 'package:school_mob/sreens/notif.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List page = [
    const AccueilPage(title: 'Learning'),
    const Inscrits(),
    const NotifPage(),
    const Etudiant(),
  ];
  //
  int currentPageSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentPageSelected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageSelected,
        elevation: 10,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: primary,
        unselectedItemColor: gris,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
            activeIcon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Inscription',
            activeIcon: Icon(Icons.bookmark_border),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notication',
            activeIcon: Icon(
              Icons.notifications_active,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Compte',
            activeIcon: Icon(
              Icons.account_circle_rounded,
            ),
          )
        ],
        onTap: (int index) {
          setState(() {
            currentPageSelected = index;
          });
        },
      ),
    );
  }
}
