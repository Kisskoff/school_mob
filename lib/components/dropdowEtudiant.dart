// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/constant/colors.dart';

class ItemEtudiant extends StatefulWidget {
  const ItemEtudiant({Key? key}) : super(key: key);

  @override
  State<ItemEtudiant> createState() => _ItemState();
}

class _ItemState extends State<ItemEtudiant> {
  // etudiant
  static const _etudiant = [
    'Etudiant 1',
    'Etudiant 2',
    'Etudiant 3',
    'Etudiant 4',
    'Etudiant 5',
    'Etudiant 6',
    'Etudiant 7',
    'Etudiant 8',
    'Etudiant 9',
    'Etudiant 10',
    'Etudiant 11',
  ];

  final List<DropdownMenuItem<String>> dropItems = _etudiant
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String? _btnSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: primary,
          width: 1.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        title: Text(
          'ETUDIANT',
          style: TextStyle(
            color: primary,
            fontFamily: 'Camaro',
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: DropdownButton<String>(
          style: TextStyle(color: noir),
          value: _btnSelect,
          hint: const Text(
            'Choisir',
            style: TextStyle(
              fontFamily: 'Camaro',
            ),
          ),
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                _btnSelect = newValue;
              });
            }
          },
          items: dropItems,
          // Utilisez InputDecoration pour personnaliser le style du DropdownButton.
          dropdownColor: blanc, // Couleur d'arrière-plan du menu déroulant
          underline: Container(), // Supprime la ligne de bordure
        ),
      ),
    );
  }
}
