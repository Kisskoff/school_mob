// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/components/text.dart';
import 'package:school_mob/constant/colors.dart';

class NotifPage extends StatefulWidget {
  const NotifPage({Key? key}) : super(key: key);

  @override
  State<NotifPage> createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
  final List<Map<String, dynamic>> notif = [
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
    {
      "id": 1,
      "libelle": "Informatique",
      "desc":
          "dispositifs électriques-électroniques : des systèmes embarqués, des ordinateurs, des robots, des automates, etc",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 4,
            pinned: false,
            // floating: true,
            // snap: true,
            // stretch: true,
            leading: IconButton(
              onPressed: () {
                //Navigator.pop(context);
              },
              icon: Icon(
                Icons.clear_rounded,
                color: blanc,
              ),
            ),
            title: textBold(
              text: 'Notification',
              textColor: blanc,
            ),
            toolbarHeight: 80,

            flexibleSpace: const FlexibleSpaceBar(
                // background: Image.asset(
                //   "assets/images/white2.jpg",
                //   fit: BoxFit.cover,
                // ),
                ),
            backgroundColor: primary,
            actions: [
              IconButton(
                onPressed: () {
                  // showAlignedDialog(
                  //   context: context,
                  //   builder: ((context) => const Add_Matiere()),
                  // );
                },
                icon: Icon(
                  Icons.messenger_outline,
                  size: 30,
                  color: blanc,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          // menu
          //
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    decoration: BoxDecoration(
                      color: blanc50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    height: 100,
                    child: ListTile(
                      leading: Icon(
                        Icons.notifications_active,
                        size: 35,
                        color: primary,
                      ),
                      title: textSimple(
                        text: '${notif.elementAt(index)['libelle']}'
                            .toUpperCase(),
                        size: 16,
                        textColor: blanc,
                      ),
                      subtitle: textSimple(
                        text: '${notif.elementAt(index)['desc']}',
                        size: 12,
                      ),
                    ),
                  ),
                );
              },
              childCount: notif.length,
            ),
          ),
        ],
      ),
    );
  }
}
