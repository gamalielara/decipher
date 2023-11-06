import 'package:decipher/theme/colors.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';

class NoteScreen extends StatelessWidget {
  static const id = "note_screen";

  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeColor.primary,
      child: Center(
        child: Text(
          "HELLO!",
          style: boldText.copyWith(fontSize: 50),
        ),
      ),
    );
  }
}
