// ignore_for_file: use_super_parameters

import 'dart:ui';

import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:school_mob/components/Add/addCours.dart';
import 'package:school_mob/components/container.dart';
import 'package:school_mob/components/text.dart';
import 'package:school_mob/constant/colors.dart';

class NosCours extends StatefulWidget {
  const NosCours({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<NosCours> createState() => _NosCoursState();
}

class _NosCoursState extends State<NosCours> {
  final List<Map<String, dynamic>> matiere = [
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "L'informatique est un domaine d'activité scientifique, technique, et industriel concernant le traitement automatique de l'information numérique par l'exécution de programmes informatiques hébergés par des dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
      "imgPath": ""
    },
    {
      "id": 2,
      "libelle": "Mathematique",
      "desc": "ceci est une description",
      "imgPath": ""
    },
    {
      "id": 3,
      "libelle": "Francais",
      "desc": "ceci est une description",
      "imgPath": ""
    },
    {
      "id": 4,
      "libelle": "Physique - chimie",
      "desc": "ceci est une description",
      "imgPath": ""
    },
    {
      "id": 5,
      "libelle": "Anglais",
      "desc": "ceci est une description",
      "imgPath": ""
    },
    {
      "id": 6,
      "libelle": "Economie",
      "desc": "ceci est une description",
      "imgPath": ""
    },
    {
      "id": 7,
      "libelle": "Droit",
      "desc": "ceci est une description",
      "imgPath": ""
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary2,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //titleSpacing: 4,
            pinned: false,
            //floating: true,
            //snap: true,
            //stretch: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.clear),
            ),
            // title: textBold(
            //   text: 'Matiere',
            //   textColor: blanc,
            // ),
            toolbarHeight: 130,
            flexibleSpace: FlexibleSpaceBar(
              title: textBold(
                text: 'Matiere',
                textColor: blanc,
              ),
              background: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Image.asset(
                  "assets/images/fond.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            backgroundColor: secondary2,
            actions: [
              IconButton(
                onPressed: () {
                  showAlignedDialog(
                    context: context,
                    builder: ((context) => const Add_Matiere()),
                  );
                },
                icon: Icon(
                  Icons.add_circle_sharp,
                  size: 40,
                  color: blanc,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  width: double.infinity,
                  color: blanc,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              //height: 33,
                              color: gris2,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 155,
                                    decoration: BoxDecoration(
                                      color: blanc50,
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/fond.jpg'),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: const Image(
                                        image: AssetImage(
                                            "assets/images/fond.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      textSimple(
                                        text:
                                            '${matiere.elementAt(index)['libelle']}'
                                                .toUpperCase(),
                                        size: 18,
                                        textColor: noir,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  textSimple(
                                    text: '${matiere.elementAt(index)['desc']}',
                                    size: 14,
                                    textColor: noir,
                                    align: TextAlign.left,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                  ///
                                  /// manipulation
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite,
                                          color: secondary2,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.share_outlined,
                                          color: noir,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            backgroundColor: primary,
                                            shape: const RoundedRectangleBorder(
                                                // borderRadius:
                                                //     BorderRadius.vertical(
                                                //   top: Radius.circular(200),
                                                // ),
                                                ),
                                            context: context,
                                            builder: (context) => const More(),
                                          );
                                        },
                                        icon: Icon(
                                          Icons.more_vert,
                                          color: noir,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              //print('Vous avez cliquez sur  ${1 + index}');
                              // showAlignedDialog(
                              //   context: context,
                              //   builder: ((context) => const MessageView()),
                              // );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                );
              },
              childCount: matiere.length,
            ),
          ),
        ],
      ),
    );
  }
}

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 400,
        height: 280,
        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
        decoration: BoxDecoration(
          color: blanc,
          // borderRadius: const BorderRadius.only(
          //   topLeft: Radius.circular(20),
          //   topRight: Radius.circular(20),
          // ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textSimple(
                  text: 'Plus d\'options',
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.clear,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: gris,
            ),
            const SizedBox(
              height: 10,
            ),
            //Afficher plus de details
            listle(
              text: 'Afficher plus de details',
              lead: Icons.ac_unit,
              textcolor: noir,
              tap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            listle(
              text: 'Apporter des modification',
              lead: Icons.ac_unit,
              textcolor: noir,
              tap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            listle(
              text: 'Supprimer la matiere',
              lead: Icons.ac_unit,
              textcolor: noir,
              tap: () {},
            ),
            // const SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}
