// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/constant/colors.dart';

class DropItem extends StatefulWidget {
  const DropItem({Key? key}) : super(key: key);

  @override
  State<DropItem> createState() => _DropItemState();
}

class _DropItemState extends State<DropItem> {
  static const _matiere = [
    'Informatique',
    'Anglais',
    'Francais',
    'Economie',
    'Histoire - Geo',
    'Physique',
    'Chimie',
    'Droit',
    'Droit',
    'Topo',
    'Arts',
  ];

  final List<DropdownMenuItem<String>> dropDowMenuItems = _matiere
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
          'MATIERE',
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
          items: dropDowMenuItems,
          // Utilisez InputDecoration pour personnaliser le style du DropdownButton.
          dropdownColor: blanc, // Couleur d'arrière-plan du menu déroulant

          underline: Container(), // Supprime la ligne de bordure
        ),
      ),
    );
  }
}
