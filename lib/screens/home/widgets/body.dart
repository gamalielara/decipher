import 'package:decipher/screens/home/widgets/note_box.dart';
import 'package:decipher/theme/colors.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Container(
          width: double.infinity,
          child: Text(
            "My Notes",
            style: boldText.copyWith(
              fontSize: 50,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: List.generate(
              10,
              (index) => Column(
                children: [
                  NoteBox(color: AppThemeColor.primary)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
