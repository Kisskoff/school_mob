import 'package:flutter/material.dart';
import 'package:school_mob/components/container.dart';
import 'package:school_mob/components/text.dart';
import 'package:school_mob/constant/colors.dart';
import 'package:school_mob/sreens/classe.dart';
import 'package:school_mob/sreens/matiere.dart';
import 'package:school_mob/sreens/search.dart';

class AccueilPage extends StatefulWidget {
  // ignore: use_super_parameters
  const AccueilPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 90),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(00),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                          color: blanc,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        textBold(
                          text: widget.title,
                          textColor: blanc,
                        ),
                      ]),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                        color: blanc,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                conteneurHome(
                  text:
                      "Use the online image color picker ceci est un text multiligne L'argument icône ne doit pas être nulle et l'argument étiquette ne doit pas être nul lorsqu'il est utilisé dans un Material Design BottomNavigationBar. If you are in building a flutter application and want to give your application a beautiful bottom navigation bar, that could just make your users feel ...",
                  textColor: blanc,
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            //conteneur(text: 'texte a modifier'),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// categorie
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      textBold(
                        text: "Categories",
                        align: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      conteneur(
                          size: 160,
                          text: 'Liste des matieres'.toUpperCase(),
                          color: secondary,
                          textColor: noir,
                          colorFond: secondary2,
                          imagePath: 'assets/images/online.png',
                          tap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NosCours(
                                  title: "Learning",
                                ),
                              ),
                            );
                          }),
                      conteneur(
                        size: 160,
                        text: 'Diplomes'.toUpperCase(),
                        textColor: noir,
                        colorFond: secondary,
                        imagePath: 'assets/images/graduation-hat.png',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      conteneur(
                        size: 160,
                        text: 'Classes'.toUpperCase(),
                        color: secondary,
                        textColor: noir,
                        colorFond: primary,
                        imagePath: 'assets/images/coding.png',
                        tap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ListClasse(),
                            ),
                          );
                        },
                      ),
                      conteneur(
                        size: 160,
                        text: 'Parametrages'.toUpperCase(),
                        textColor: noir,
                        colorFond: vert,
                        imagePath: 'assets/images/engineering.png',
                        tap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SearchPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
