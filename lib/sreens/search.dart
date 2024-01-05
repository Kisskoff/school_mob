// ignore_for_file: use_super_parameters

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:school_mob/components/saisie.dart';
import 'package:school_mob/components/text.dart';
import 'package:school_mob/constant/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // Exemple de données pour le GridView
  List<String> categories = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
    'Category 5'
  ];

  bool isSelected = false;
  bool select = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: vert,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: blanc,
          //image: const DecorationImage(
          //fit: BoxFit.cover,
          //image: AssetImage("assets/images/fond.jpg"),
          //),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 50),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  color: vert,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.clear,
                                ),
                              ),
                              textBold(
                                text: 'Search in',
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_active_rounded,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          textSimple(text: 'learnig'),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      searchTextField(
                          borderColor: vert, hint: 'ceci est un texte'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Quelques suggestions !!!",
                          style: TextStyle(
                            fontSize: 22,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ChoiceChip
                    SizedBox(
                      height: 150,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, // Nombre d'éléments par ligne
                          crossAxisSpacing:
                              8.0, // Espacement horizontal entre les éléments
                          mainAxisSpacing:
                              8.0, // Espacement vertical entre les éléments
                        ),
                        itemBuilder: (context, index) {
                          return Wrap(children: [
                            ChoiceChip(
                              label: Text(
                                categories[index],
                                style: TextStyle(
                                    color: isSelected ? blanc : primary),
                              ),
                              avatar: Icon(
                                isSelected ? Icons.check : Icons.clear,
                                color: isSelected ? blanc : primary,
                              ),
                              backgroundColor: violet,
                              elevation: 0,
                              labelPadding: const EdgeInsets.all(8),
                              selected: isSelected,
                              selectedColor: primary,
                              onSelected: (
                                value,
                              ) {
                                setState(() {
                                  isSelected = value;
                                  select = false;
                                });
                              },
                            ),
                          ]);
                          //return Text(categories[index]);
                        },
                        itemCount: categories.length,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///

//class chip()