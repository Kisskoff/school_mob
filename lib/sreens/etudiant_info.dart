// ignore_for_file: use_super_parameters

import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:school_mob/components/Add/AddNote.dart';
import 'package:school_mob/components/button.dart';
import 'package:school_mob/components/container.dart';
import 'package:school_mob/components/text.dart';
import 'package:school_mob/constant/colors.dart';
import 'package:school_mob/sreens/note.dart';

class EtudiantInfo extends StatefulWidget {
  final Map<String, dynamic> item;
  // final Item item;
  const EtudiantInfo({Key? key, required this.item}) : super(key: key);

  @override
  State<EtudiantInfo> createState() => _EtudiantInfoState();
}

class _EtudiantInfoState extends State<EtudiantInfo> {
  // @override
  // void initState() {
  //   super.initState();
  //   // Masquer la barre de statut et la barre de navigation inférieure
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  // }

  // @override
  // void dispose() {
  //   // Rétablir le mode système par défaut lors de la fermeture de la page
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.clear,
            color: blanc,
          ),
        ),
        // title: textSimple(
        //   text: 'Profile',
        //   textColor: blanc,
        //   size: 18,
        //   align: TextAlign.center,
        // ),
        //title: Text('',),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: primary,
        //backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.pop(context);
            },
            icon: Icon(
              Icons.more_vert,
              color: blanc,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Column(
              children: [
                // Hero(
                //   tag: widget.item['name'],
                //   child: Container(
                //     width: 100,
                //     height: 100,
                //     decoration: BoxDecoration(
                //         color: blanc50,
                //         borderRadius: BorderRadius.circular(50),
                //         image: DecorationImage(
                //           image: AssetImage(widget.item['imgPath']),
                //         )),
                //   ),
                // ),
                Hero(
                  tag: widget.item['name'],
                  // child: Image.asset(
                  //   widget.item['imgPath'],
                  // ),
                  child: CircleAvatar(
                    // backgroundColor: blanc50,
                    radius: 50,
                    backgroundImage: AssetImage(
                      widget.item['imgPath'],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                textBold(
                  text: widget.item['name'],
                  textColor: blanc,
                  size: 20,
                  align: TextAlign.center,
                ),
                const SizedBox(height: 10),
                // textSimple(
                //   text: widget.item['desc'],
                //   textColor: blanc,
                //   size: 16,
                //   align: TextAlign.center,
                // ),
                const SizedBox(
                  height: 30,
                ),
                // boiton ajout note
                buttonCustom(
                  text: 'Ajout de note',
                  textColor: primary,
                  color: blanc,
                  btncolor: primary,
                  iconColor: blanc,
                  icon: Icons.add,
                  tap: () {
                    showAlignedDialog(
                      context: context,
                      builder: (context) => const AddNote(),
                    );
                  },
                ),
                const SizedBox(
                  height: 35,
                ),
                // bord rang moyenne
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // cours
                    Column(
                      children: [
                        textBold(
                          text: '10',
                          textColor: blanc,
                        ),
                        const SizedBox(height: 8),
                        textSimple(
                          text: 'Cours',
                          textColor: blanc,
                          align: TextAlign.center,
                        )
                      ],
                    ),
                    Container(
                      width: 2,
                      height: 30,
                      color: blanc,
                    ),
                    //moyenne
                    Column(
                      children: [
                        textBold(
                          text: '15',
                          textColor: blanc,
                        ),
                        const SizedBox(height: 8),
                        textSimple(
                          text: 'Moyenne',
                          textColor: blanc,
                          align: TextAlign.center,
                        )
                      ],
                    ),
                    Container(
                      width: 2,
                      height: 30,
                      color: blanc,
                    ),
                    // rang
                    Column(
                      children: [
                        textBold(
                          text: '09',
                          textColor: blanc,
                        ),
                        const SizedBox(height: 8),
                        textSimple(
                          text: 'Rang',
                          textColor: blanc,
                          align: TextAlign.center,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                ////
                // Modification
                Column(
                  children: [
                    // modifier
                    profil(
                        text: 'Modifier le compte',
                        hauteur: 70,
                        color: blanc,
                        icon: Icons.person,
                        tap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => const UpdateCompte(),
                          );
                        }
                        //size: 100,
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    // resultat
                    profil(
                        text: 'Resultats',
                        hauteur: 70,
                        color: blanc,
                        icon: Icons.personal_injury,
                        tap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const LesNotes()),
                          );
                        }
                        //size: 100,
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    // rang
                    profil(
                        text: 'Rang',
                        hauteur: 70,
                        color: blanc,
                        icon: Icons.grade_rounded,
                        tap: () {}
                        //size: 100,
                        ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UpdateCompte extends StatelessWidget {
  const UpdateCompte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 400,
        height: 300,
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
                  text: 'Modifier le compte',
                  align: TextAlign.center,
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
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: noir,
            ),
            const SizedBox(
              height: 10,
            ),
            //nom

            const SizedBox(
              height: 10,
            ),
            // prenom
            const SizedBox(
              height: 10,
            ),

            /// date
            // const SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}
