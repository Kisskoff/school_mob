import 'package:flutter/material.dart';
import 'package:school_mob/constant/colors.dart';

//
Widget saisie({
  final title,
  String? hint,
  TextEditingController? controller,
  int? maxlines = 1,
  bool obscur = false,
  final keybord,
  IconData? iconPrefix,
  int? length = 50,
}) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: primary,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        child: TextFormField(
          //maxLength: length,
          obscureText: obscur,
          obscuringCharacter: '*',
          controller: controller,
          maxLines: maxlines,
          keyboardType: keybord,
          decoration: InputDecoration(
            focusColor: primary,
            hoverColor: secondary,
            fillColor: gris,
            hintText: hint,
            hintStyle: const TextStyle(
              fontFamily: 'Akuina',
              //color: noir,
              fontSize: 18,
            ),
            border: InputBorder.none,
            suffixIcon: IconButton(
              onPressed: () {
                controller?.clear();
              },
              icon: Icon(
                Icons.close,
                color: noir,
                size: 16.0,
              ),
            ),
            prefixIcon: Icon(
              iconPrefix ?? Icons.person_outline_rounded,
              color: primary,
              size: 30,
            ),
            //prefix: Text('prefix'),
          ),
          style: TextStyle(
            color: noir,
            fontFamily: 'Camaro',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

/////////
////////////////
///
Widget dateField({
  VoidCallback? tap,
  final title,
  String? hint,
  TextEditingController? controller,
  int? maxlines = 1,
  IconData? icon,
  IconData? prefixIcon,
}) {
  return Column(
    children: [
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        height: 55,
        decoration: BoxDecoration(
          border:
              Border.all(color: primary, width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextFormField(
          controller: controller,
          maxLines: maxlines,
          keyboardType: TextInputType.datetime,
          readOnly: true,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              fontFamily: 'Camaro',
            ),
            border: InputBorder.none,
            prefixIcon: IconButton(
              icon: Icon(
                Icons.calendar_today_sharp,
                color: primary,
              ),
              onPressed: tap,
            ),
            // suffixIcon: IconButton(
            //   onPressed: () {
            //     controller?.clear();
            //   },
            //   icon: Icon(
            //     Icons.close,
            //     color: noir,
            //     size: 16.0,
            //   ),
            // ),
          ),
          style: TextStyle(
            color: gris,
            fontFamily: 'Camaro',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

// search
Widget searchTextField({
  VoidCallback? tap,
  final title,
  String? hint,
  TextEditingController? controller,
  int? maxlines = 1,
  Color? borderColor,
}) {
  return Column(
    children: [
      Container(
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: blanc,
          border: Border.all(
            color: borderColor ?? primary,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        child: TextFormField(
          onEditingComplete: tap,
          controller: controller,
          maxLines: maxlines,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              fontFamily: 'Camaro',
            ),
            border: InputBorder.none,
            prefixIcon: GestureDetector(
              onTap: tap,
              child: const Icon(
                Icons.search,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                controller?.clear();
              },
              icon: Icon(
                Icons.close,
                color: noir,
                size: 16.0,
              ),
            ),
          ),
          style: TextStyle(
            color: gris,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: 'Camaro',
          ),
        ),
      ),
    ],
  );
}

/// saisie multiple
/// //
Widget saisieMultiLine({
  final label,
  TextEditingController? controller,
  int? max,
}) {
  return Container(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: blanc,
      border: Border.all(
        color: primary,
        width: 1.0,
        style: BorderStyle.solid,
      ),
    ),
    child: TextFormField(
      controller: controller,
      maxLines: 5,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        label: Text(
          label ?? 'Description',
          style: const TextStyle(
            fontFamily: 'Camaro',
          ),
        ),
        //hintText: 'Description',
        border: InputBorder.none,
      ),
      style: TextStyle(
        color: noir,
        fontWeight: FontWeight.bold,
        fontFamily: 'Camaro',
        fontSize: 14,
      ),
    ),
  );
}
