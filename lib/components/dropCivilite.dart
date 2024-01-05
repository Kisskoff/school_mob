// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/constant/colors.dart';

class DropCivilite extends StatefulWidget {
  const DropCivilite({Key? key}) : super(key: key);

  @override
  State<DropCivilite> createState() => _DropCiviliteState();
}

class _DropCiviliteState extends State<DropCivilite> {
  static const _sexe = [
    'M',
    'Mlle',
  ];
  final List<DropdownMenuItem<String>> dropDowMenuItems = _sexe
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
          'Civilite',
          style: TextStyle(
            color: primary,
            fontWeight: FontWeight.bold,
            fontFamily: 'Camaro',
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
