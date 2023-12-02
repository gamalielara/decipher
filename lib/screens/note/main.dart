import 'package:decipher/screens/note/noteQuill.dart';
import 'package:decipher/screens/note/noteBodyHeader.dart';
import 'package:decipher/theme/colors.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoteScreen extends StatelessWidget {
  static const id = "note_screen";

  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeColor.primary,
      child: Scaffold(
        backgroundColor: AppThemeColor.bgColor,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 25),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  NoteBodyHeader(),
                  NoteQuill(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
