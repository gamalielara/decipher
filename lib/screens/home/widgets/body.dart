import 'package:decipher/models/note.dart';
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
          margin: const EdgeInsets.only(top: 200),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
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
                  "My Journals",
                  style: boldText.copyWith(
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: List.generate(
                  sampleNotes.length,
                  (index) => NoteBox(
                    color: AppThemeColor.primary,
                    title: sampleNotes[index].title,
                    body: sampleNotes[index].body,
                    createdAt: sampleNotes[index].createdAt,
                    lastModified: sampleNotes[index].lastModified,
                  ),
                ),
                // children: [],
              ),
            ],
          ),
        ));
  }
}
