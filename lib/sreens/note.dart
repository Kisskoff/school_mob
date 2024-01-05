// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class LesNotes extends StatefulWidget {
  const LesNotes({Key? key}) : super(key: key);

  @override
  State<LesNotes> createState() => _LesNotesState();
}

class _LesNotesState extends State<LesNotes> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('liste des notes des eleves')),
    );
  }
}
