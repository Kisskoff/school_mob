// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/components/button.dart';
import 'package:school_mob/components/saisie.dart';
import 'package:school_mob/constant/colors.dart';

// ignore: camel_case_types
class Add_Matiere extends StatefulWidget {
  const Add_Matiere({Key? key}) : super(key: key);

  @override
  State<Add_Matiere> createState() => _AddMatiereState();
}

class _AddMatiereState extends State<Add_Matiere> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          width: 330,
          height: 400,
          color: blanc,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              saisie(
                title: '',
                hint: 'Nouvelle matiere',
                iconPrefix: Icons.school_rounded,
              ),
              const SizedBox(
                height: 15,
              ),
              saisie(
                title: '',
                hint: 'Coeficients',
                iconPrefix: Icons.pages,
              ),
              const SizedBox(
                height: 15,
              ),
              // textmulitline
              saisieMultiLine(),
              const SizedBox(
                height: 30,
              ),
              buttonCustom(
                tap: () {},
                text: 'Valider',
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
