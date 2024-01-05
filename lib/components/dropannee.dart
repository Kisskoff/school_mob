// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/constant/colors.dart';

class DropAnn extends StatefulWidget {
  const DropAnn({Key? key}) : super(key: key);

  @override
  State<DropAnn> createState() => _DropAnnState();
}

class _DropAnnState extends State<DropAnn> {
  static const _an = [
    '2022-2023',
    '2023-2024',
    '2024-2025',
  ];

  final List<DropdownMenuItem<String>> dropDowMenuItems = _an
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
          'Année Scolaire',
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
