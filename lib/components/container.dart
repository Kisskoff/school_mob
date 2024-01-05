import 'package:flutter/material.dart';
import 'package:school_mob/components/text.dart';
import 'package:school_mob/constant/colors.dart';

Widget conteneur({
  VoidCallback? tap,
  final text,
  Color? color,
  Color? colorFond,
  Color? textColor,
  double? size,
  double? sizeText,
  String? imagePath,
  double? hauteur,
}) {
  return GestureDetector(
    onTap: tap,
    child: Container(
      width: size,
      height: hauteur ?? 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorFond,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 90,
            height: 90,
            //color: gris,
            decoration: BoxDecoration(
              //color: blanc50,
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50),
            ),
            //color: Colors.transparent,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 100,
              child: imagePath != ''
                  ? Image(
                      image: AssetImage(
                        imagePath!,
                      ),
                      width: 85,
                      height: 85,
                    )
                  : const Image(
                      image: AssetImage(
                        'assets/images/play1.png',
                      ),
                      width: 85,
                      height: 85,
                    ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: sizeText,
              color: textColor,
              fontFamily: 'Camaro',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

/////// CONTENEUR 2 /////////
///
Widget profil({
  VoidCallback? tap,
  final text,
  Color? textColor,
  Color? color,
  double? sizeText,
  String? imagePath,
  double? size,
  double? hauteur,
  IconData? icon,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      width: double.infinity,
      height: hauteur,
      color: color,
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: violet,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            icon ?? Icons.person,
            size: 30,
            color: primary,
          ),
        ),
        title: textSimple(
          text: text,
          textColor: primary,
          size: 16,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 30,
          color: primary,
        ),
        onTap: tap,
      ),
    ),
  );
}

//::::
Widget conteneurHome({
  VoidCallback? tap,
  final text,
  Color? color,
  Color? colorFond,
  Color? textColor,
  double? size,
  double? sizeText,
  String? imagePath,
}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 100, 20, 10),
    child: Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bleu,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textBold(
                  text: 'ONLINE',
                  textColor: blanc,
                ),
                textBold(
                  text: 'EDUCATION',
                  textColor: blanc,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: sizeText,
                          color: textColor,
                          fontFamily: 'Camaro'),
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 100,
                  height: 140,
                  decoration: BoxDecoration(
                    //color: Colors.blue[200],
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
                Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    //color: Colors.blue[100],
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Container(
                  width: 87,
                  height: 87,
                  decoration: BoxDecoration(
                    //color: Colors.blue[500],
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Image(
                    image: AssetImage("assets/images/play.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

//// wi
Widget contain({
  Color? fond,
}) {
  return Container(
    width: double.infinity,
    height: 100,
    color: fond ?? Colors.blue,
    //child: Image(image: image),
  );
}

/////

Widget etudiantComponent({
  VoidCallback? tap,
  final text,
  final textDesc,
  final prix,
  Color? color,
  Color? colorFond,
  Color? textColor,
  double? size,
  double? sizeText,
  String? imgfond,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    width: size,
    height: 200,
    decoration: BoxDecoration(
      color: colorFond,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Expanded(
          flex: 4,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              GestureDetector(
                onTap: tap,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: color,
                    // image: DecorationImage(
                    //   fit: BoxFit.cover,
                    //   image: AssetImage(imgfond),
                    //   //image: NetworkImage(imgfond),
                    // ),
                  ),
                  // child: CircleAvatar(

                  //   backgroundImage: AssetImage(imgfond),
                  // ),
                  child: Container(
                    width: 90,
                    //height: 90,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image(
                      image: AssetImage(imgfond!),
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   top: 2,
              //   right: 2,
              //   child: IconButton(
              //     onPressed: () {},
              //     icon: const Icon(
              //       Icons.favorite_outline_rounded,
              //       size: 30,
              //     ),
              //     color: Colors.redAccent,
              //   ),
              // ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                  fontFamily: 'Camaro',
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        // Expanded(
        //   flex: 1,
        //   child: Text(
        //     textDesc,
        //     style: const TextStyle(
        //       fontSize: 14,
        //       // maxLines: 1,
        //       overflow: TextOverflow.ellipsis,
        //     ),
        //   ),
        // ),
        // Expanded(
        //   flex: 1,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,

        //     children: [
        //       Text(
        //         prix,
        //         style: const TextStyle(
        //           fontSize: 16,
        //           fontWeight: FontWeight.w700,
        //           color: Colors.red,
        //         ),
        //       ),
        //       const IconButton(
        //           onPressed: null,
        //           icon: Icon(
        //             Icons.add_circle,
        //             size: 24,
        //             color: Colors.amber,
        //           )),
        //     ],
        //   ),
        // ),
      ],
      //
    ),
  );
}

///
//// wi
Widget listle({
  VoidCallback? tap,
  IconData? lead,
  final text,
  Color? textcolor,
}) {
  return ListTile(
    leading: Icon(
      lead ?? Icons.eco_sharp,
      color: gris,
    ),
    title: textSimple(
      text: text,
      textColor: textcolor,
      size: 14,
      align: TextAlign.left,
    ),
    // trailing: Icon(
    //   Icons.arrow_forward_ios,
    //   color: gris,
    // ),
  );
}
