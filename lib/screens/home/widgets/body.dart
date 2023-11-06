import 'package:decipher/screens/home/widgets/note_box.dart';
import 'package:decipher/theme/colors.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: 200),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: AppThemeColor.dark,
          ),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 10),
                child: Text(
                  "My Notes",
                  style: boldText.copyWith(
                    fontSize: 40,
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
                      children: [NoteBox(color: AppThemeColor.primary)],
                    ),
                  ),
                  // children: [],
                ),
              ),
            ],
          ),
        ));
  }
}
