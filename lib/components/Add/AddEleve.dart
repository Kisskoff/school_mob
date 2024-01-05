// ignore_for_file: must_be_immutable, file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:school_mob/components/button.dart';
import 'package:school_mob/components/dropCivilite.dart';
import 'package:school_mob/components/saisie.dart';
import 'package:school_mob/components/text.dart';
import 'package:school_mob/constant/colors.dart';

class AjoutEleve extends StatefulWidget {
  const AjoutEleve({Key? key}) : super(key: key);

  @override
  State<AjoutEleve> createState() => _AjoutEleveState();
}

class _AjoutEleveState extends State<AjoutEleve> {
  TextEditingController nomController = TextEditingController();
  TextEditingController prenomController = TextEditingController();
  TextEditingController naissController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController adresseController = TextEditingController();
  TextEditingController urgentController = TextEditingController();
  TextEditingController civiliteController = TextEditingController();
  TextEditingController lieuController = TextEditingController();

  // date time
  DateTime datetime = DateTime(2023, 12, 17, 15, 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.clear,
            color: primary,
          ),
        ),
        //toolbarHeight: 60,
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        title: textBold(
          text: 'NOUVEAU ETUDIANT',
          textColor: primary,
          size: 20,
        ),
        elevation: 0,
      ),
      backgroundColor: blanc,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // saisie
                const DropCivilite(),
                // sexe
                const SizedBox(
                  height: 10,
                ),
                // nom
                saisie(
                    title: '',
                    hint: 'Nom de l\'etudiant',
                    controller: nomController
                    //su
                    ),
                const SizedBox(
                  height: 15,
                ),
                // prenom
                saisie(
                  title: '',
                  hint: 'Prénoms de l\'etudiant',
                  controller: prenomController,
                  iconPrefix: Icons.person_outline,
                  //su
                ),
                // phone
                const SizedBox(
                  height: 15,
                ),
                // phone
                saisie(
                  title: '',
                  hint: 'Numero de telephone',
                  controller: phoneController,
                  iconPrefix: Icons.phone,
                  keybord: TextInputType.phone,
                  length: 10,
                  //su
                ),
                // email
                const SizedBox(
                  height: 15,
                ),
                //
                saisie(
                  title: '',
                  hint: 'Adresse email',
                  controller: mailController,
                  iconPrefix: Icons.email_sharp,
                  keybord: TextInputType.emailAddress,
                  //su
                ),
                // date naissance
                const SizedBox(
                  height: 15,
                ),
                // date de naissance
                dateField(
                  title: '${datetime.day}/${datetime.month}/${datetime.year}',
                  hint: '${datetime.day}/${datetime.month}/${datetime.year}',
                  //hint: 'Date de naissance',
                  controller: naissController,
                  tap: () async {
                    final date = await pickDate();
                    debugPrint('$datetime');
                    if (date == null) return; // cancel
                    final newDateTime = DateTime(
                      date.year,
                      date.month,
                      date.day,
                      date.hour,
                      date.minute,
                    );

                    setState(
                      () {
                        datetime = newDateTime;
                      },
                    );
                  },
                ),
                // lieu naissance
                const SizedBox(
                  height: 15,
                ),
                // email
                saisie(
                  title: '',
                  hint: 'Lieu de naissance',
                  controller: lieuController,
                  iconPrefix: Icons.person_pin_circle_sharp,
                  keybord: TextInputType.emailAddress,
                  //su
                ),
                // adresse
                const SizedBox(
                  height: 15,
                ),
                //
                saisie(
                  title: '',
                  hint: 'Adresse',
                  controller: adresseController,
                  iconPrefix: Icons.pin,
                  keybord: TextInputType.emailAddress,
                  //su
                ),

                // urgent phone
                const SizedBox(
                  height: 15,
                ),
                // email
                saisie(
                  title: '',
                  hint: 'Numéro de parents',
                  controller: urgentController,
                  iconPrefix: Icons.phone_callback_outlined,
                  keybord: TextInputType.phone,
                  length: 10,
                  //su
                ),
                //
                const SizedBox(
                  height: 30,
                ),
                // bouton de validation
                buttonCustom(
                    color: primary,
                    text: '    Valider',
                    textColor: blanc,
                    iconColor: primary,
                    btncolor: blanc,
                    tap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///
  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: datetime,
        firstDate: DateTime(2005),
        lastDate: DateTime(2100),
      );
}
