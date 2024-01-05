// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/components/Add/AddEleve.dart';
import 'package:school_mob/components/button.dart';
import 'package:school_mob/components/saisie.dart';
import 'package:school_mob/constant/colors.dart';
import 'package:school_mob/sreens/etudiant_info.dart';

class Etudiant extends StatefulWidget {
  const Etudiant({Key? key}) : super(key: key);

  @override
  State<Etudiant> createState() => _EtudiantState();
}

class _EtudiantState extends State<Etudiant> {
  TextEditingController searchController = TextEditingController();

  // final List<Map> myproducts = List.generate(
  //     10,
  //     (index) => {
  //           'id': index,
  //           "name": "product $index",
  //           "desc ": " ceci est une description",
  //           "prix": "2000 f",
  //           "imagePath": "assets/skirt.png",
  //         }).toList();
  ///////
  ///final
  final List<Map<String, dynamic>> gridMap = [
    {
      "id": 1,
      "name": "Etudiant 1",
      "desc": "Tle A1",
      "imgPath": "assets/images/user.png"
    },
    {
      "id": 2,
      "name": "Etudiant 2",
      "desc": "Tle D",
      "imgPath": "assets/images/student.png"
    },
    {
      "id": 3,
      "name": "Etudiant 3",
      "desc": "Tle C1",
      "imgPath": "assets/images/user.png"
    },
    {
      "id": 4,
      "name": "Etudiant 4",
      "desc": "Tle A",
      "imgPath": "assets/images/user.png"
    },
    {
      "id": 5,
      "name": "Etudiant 5",
      "desc": "Tle D2",
      "imgPath": "assets/images/1.png"
    },
    {
      "id": 6,
      "name": "Etudiant 6",
      "desc": "ECOM 2",
      "imgPath": "assets/images/graduated.png"
    },
    {
      "id": 7,
      "name": "Walden by Camper",
      "desc": "Tle A",
      "imgPath": "assets/images/1.png"
    },
    {"id": 8, "name": "Etudiant 8", "imgPath": "assets/images/user.png"},
    {
      "id": 9,
      "name": "Etudiant 9",
      "desc": "Tle A",
      "imgPath": "assets/images/user.png"
    },
    {"id": 10, "name": "Etudiant 10", "imgPath": "assets/images/user.png"},
    {
      "id": 11,
      "name": "Etudiant 11",
      "desc": "Tle E",
      "imgPath": "assets/images/graduated.png"
    },
    {
      "id": 12,
      "name": "Etudiant 12",
      "desc": "Tle A",
      "imgPath": "assets/images/user.png"
    },
    {
      "id": 13,
      "name": "Girls Women High Waisted Plain Pleated",
      "desc": "Tle A",
      "imgPath": "assets/images/graduated.png"
    },
    {
      "id": 14,
      "name": "All Star by kisskoff",
      "imgPath": "assets/images/2.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 70,
      //   titleSpacing: 0,
      //   backgroundColor: Colors.transparent,
      //   title: textSimple(
      //     text: "Liste des etudiants".toUpperCase(),
      //     textColor: primary,
      //   ),
      //   elevation: 0,
      //   centerTitle: true,
      // ),
      backgroundColor: primary,
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              //search
              searchTextField(
                title: '',
                hint: 'Rechercher un etudiant',
                tap: () {},
              ),

              // categorie
              const SizedBox(
                height: 50,
              ),
              // gridview
              // title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttonCustom(
                    text: 'Nouveau etudiant',
                    color: blanc,
                    textColor: primary,
                    btncolor: primary,
                    iconColor: blanc,
                    icon: Icons.add,
                    tap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AjoutEleve(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      color: blanc,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: gridMap.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      mainAxisExtent: 180,
                    ),
                    itemBuilder: (_, index) {
                      final items = gridMap[index];
                      return Container(
                        padding: const EdgeInsets.all(10),
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: blanc,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                EtudiantInfo(item: items)),
                                      );
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 100,
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: blanc,
                                        image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                            '${gridMap.elementAt(index)['imgPath']}',
                                          ),
                                          //image: NetworkImage(imgfond),
                                        ),
                                      ),
                                      // child: Container(
                                      //   width: 90,
                                      //   //height: 90,
                                      //   decoration: BoxDecoration(
                                      //     color: Colors.transparent,
                                      //     borderRadius:
                                      //         BorderRadius.circular(50),
                                      //   ),
                                      //   child: Hero(
                                      //     tag: items,
                                      //     child: Image(
                                      //       image: AssetImage(
                                      //         //'$items.imgPath',
                                      //         '${gridMap.elementAt(index)['imgPath']}',
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "${gridMap.elementAt(index)['name']}"
                                        .toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: noir,
                                      fontFamily: 'Camaro',
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                          //
                        ),
                      );
                      // return etudiantComponent(
                      //   colorFond: blanc,
                      //   color: blanc,
                      //   text:
                      //       "${gridMap.elementAt(index)['name']}".toUpperCase(),
                      //   textColor: noir,
                      //   size: 200,
                      //   textDesc: "${gridMap.elementAt(index)['desc']}",
                      //   prix: '${gridMap.elementAt(index)['prix']}',
                      //   imgfond: '$item.imgPath',
                      //   //imgfond: '${gridMap.elementAt(index)['imgPath']}',
                      //   tap: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (BuildContext context) =>
                      //               const EtudiantInfo()),
                      //     );
                      //   },
                      // );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
