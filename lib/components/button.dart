import 'package:flutter/material.dart';
import 'package:school_mob/constant/colors.dart';

Widget buttonCustom({
  VoidCallback? tap,
  Color? color,
  Color? textColor,
  Color? hover,
  Color? btncolor,
  Color? iconColor,
  IconData? icon,
  final text,
  double? width,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: SizedBox(
      width: width ?? 220,
      height: 50,
      child: MaterialButton(
          onPressed: tap,
          elevation: 5.0,
          color: color ?? primary,
          hoverColor: hover,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text.toString().toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor ?? noir,
                  fontSize: 15,
                  letterSpacing: 0.5,
                  fontFamily: 'Camaro',
                  fontWeight: FontWeight.bold,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 40,
                  height: 40,
                  color: btncolor,
                  child: Icon(
                    icon ?? Icons.arrow_forward_ios,
                    color: iconColor ?? blanc,
                  ),
                ),
              ),
            ],
          )),
    ),
  );
}
