// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/components/button.dart';
import 'package:school_mob/components/saisie.dart';
import 'package:school_mob/components/text.dart';
import 'package:school_mob/constant/colors.dart';

class ListClasse extends StatefulWidget {
  const ListClasse({Key? key}) : super(key: key);

  @override
  State<ListClasse> createState() => _ListClasseState();
}

class _ListClasseState extends State<ListClasse> {
  final List<Map<String, dynamic>> classe = [
    {
      "id": 1,
      "libelle": "IDA",
      "desc":
          "L'informatique est un domaine, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "rit",
      "desc":
          "L'informatique est un domaine, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "droit",
      "desc":
          "L'informatique est un domaine, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "francais",
      "desc":
          "L'informatique est un domaine, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "economie",
      "desc":
          "L'informatique est un domaine, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "allemand",
      "desc":
          "L'informatique est un domaine, des ordinateurs, des robots, des automates, etc",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: blanc,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: primary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.clear,
            color: blanc,
          ),
        ),
        title: textSimple(
          text: 'Listing des classes'.toUpperCase(),
          align: TextAlign.left,
          textColor: blanc,
        ),
        actions: [
          IconButton(
            onPressed: () {
              //
              showModalBottomSheet(
                context: context,
                builder: (context) => const AddClasse(),
              );
            },
            icon: Icon(
              Icons.add_circle_rounded,
              color: blanc,
              size: 40,
            ),
          ),
          const SizedBox(width: 40),
        ],
      ),

      body: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
          child: Column(
            children: [
              // const SizedBox(
              //   height: 20,
              // ),
              // // titre
              // textBold(
              //   text: 'Listing des classes'.toUpperCase(),
              //   align: TextAlign.left,
              //   size: 30,
              // ),
              const SizedBox(
                height: 20,
              ),
              textSimple(
                text:
                    "Use the online image color picker above to select a color and get the HTML Color Code of this pixel. Also you get the HEX color code value, RGB value and HSV value. Under 'Use Your Image' You can upload your own image (for example an screenshot of your desktop), paste an image from clipboard, put a picture url in the textbox below. ",
              ),
              const SizedBox(
                height: 40,
              ),
              searchTextField(hint: 'rechercher une classe'),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: blanc,
                          border: Border.all(
                            color: gris,
                            width: 1.0,
                          ),
                        ),
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: blanc,
                            ),
                            child: const Image(
                              image: AssetImage("assets/images/2.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          title: textBold(
                            text: '${classe.elementAt(index)['libelle']}'
                                .toUpperCase(),
                            size: 16,
                            textColor: primary,
                          ),
                          subtitle: textSimple(
                            text: '${classe.elementAt(index)['desc']}',
                            size: 12,
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                          ),
                          // trailing: buttonCustom(
                          //   color: primary,
                          //   text: '  Plus d\'infos',
                          //   textColor: blanc,
                          //   btncolor: primary,
                          //   iconColor: blanc,
                          //   width: 160,
                          //   tap: () {},
                          // ),
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  );
                },
                itemCount: classe.length,
                shrinkWrap: true,
                //semanticChildCount: classe.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddClasse extends StatelessWidget {
  const AddClasse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: 380,
        color: blanc,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 8, 40, 10),
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     textSimple(
              //       text: 'Options',
              //     ),
              //     IconButton(
              //       onPressed: () {},
              //       icon: const Icon(
              //         Icons.clear,
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              saisie(
                title: '',
                hint: "Nom de la classe",
                length: 25,
                iconPrefix: Icons.account_box,
              ),
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
