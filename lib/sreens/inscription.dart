// ignore_for_file: use_super_parameters

import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:school_mob/components/Add/addAnne.dart';
import 'package:school_mob/components/button.dart';
import 'package:school_mob/components/dropannee.dart';
import 'package:school_mob/components/dropclasse.dart';
import 'package:school_mob/components/dropdowEtudiant.dart';
import 'package:school_mob/components/saisie.dart';
import 'package:school_mob/components/text.dart';
import 'package:school_mob/constant/colors.dart';

class Inscrits extends StatefulWidget {
  const Inscrits({Key? key}) : super(key: key);

  @override
  State<Inscrits> createState() => _InscritsState();
}

class _InscritsState extends State<Inscrits> {
  @override
  Widget build(BuildContext context) {
    // Exemple de données pour la liste
    List<String> items = List.generate(100, (index) => 'Année $index');

    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            //Navigator.pop(context);
          },
          icon: Icon(
            Icons.clear_rounded,
            color: blanc,
          ),
        ),
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: primary,
        title: textBold(
          text: 'Fiche des inscription',
          textColor: blanc,
          size: 16,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context, builder: (context) => const PlusInscrit());
            },
            icon: Icon(
              Icons.add_circle,
              color: blanc,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                // recherche
                searchTextField(
                  title: '',
                  hint: 'Recherche',
                  tap: () {},
                ),
                // Annee scolaire
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: bleu,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          showAlignedDialog(
                            context: context,
                            builder: (context) => const AddAnnee(),
                          );
                        },
                        icon: Icon(
                          Icons.add,
                          color: blanc,
                          size: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                width: 120,
                                //height: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: blanc,
                                  borderRadius: BorderRadius.circular(30),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    textSimple(
                                      text: items[index].toUpperCase(),
                                      textColor: primary,
                                    ),
                                    // const Icon(
                                    //   Icons.cloud_queue,
                                    // ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    //height: 600,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          //height: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: blanc50,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 0,
                              color: blanc50,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: blanc50,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                ),
                                child: Icon(
                                  Icons.person,
                                  size: 40,
                                  color: primary,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  textBold(
                                    text: items[index],
                                  ),
                                  textSimple(
                                    text: items[index],
                                  ),
                                  textSimple(
                                    text: items[index],
                                    size: 15,
                                    textColor: blanc,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: items.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// add plus inscrit
class PlusInscrit extends StatelessWidget {
  const PlusInscrit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: 450,
        color: blanc,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 8, 40, 10),
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     // textSimple(
              //     //   text: 'Options',
              //     // ),
              //     IconButton(
              //       onPressed: () {},
              //       icon: const Icon(
              //         Icons.clear,
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 10,
              ),
              const DropAnn(),
              const SizedBox(
                height: 10,
              ),
              const DropClasse(),
              const SizedBox(
                height: 10,
              ),
              const ItemEtudiant(),
              const SizedBox(
                height: 10,
              ),
              saisieMultiLine(),
              const SizedBox(
                height: 15,
              ),
              buttonCustom(
                tap: () {},
                text: '  Valider',
                textColor: blanc,
                color: primary,
                btncolor: blanc,
                iconColor: primary,
                width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
