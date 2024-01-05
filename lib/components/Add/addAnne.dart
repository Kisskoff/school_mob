// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/components/button.dart';
import 'package:school_mob/components/saisie.dart';
import 'package:school_mob/constant/colors.dart';

class AddAnnee extends StatelessWidget {
  const AddAnnee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        child: Container(
          width: 330,
          height: 320,
          color: blanc,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     IconButton(
                //       onPressed: () {},
                //       icon: const Icon(
                //         Icons.clear,
                //       ),
                //     ),
                //   ],
                // ),
                saisie(
                  iconPrefix: Icons.date_range,
                  hint: 'Saisie une année scolaire',
                ),
                const SizedBox(
                  height: 15,
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
      ),
    );
  }
}
