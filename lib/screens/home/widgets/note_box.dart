import 'package:decipher/screens/note/main.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';

class NoteBox extends StatelessWidget {
  final Color color;
  final String title;
  final String body;

  const NoteBox(
      {super.key,
      required this.color,
      required this.title,
      required this.body});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        const double widthFactor = 0.45;

        const double noteBoxHeight = 200;

        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, NoteScreen.id);
          },
          child: Container(
            width: constraints.maxWidth * widthFactor,
            height: noteBoxHeight,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: this.color, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: semiBoldText.copyWith(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 10),
                Text(
                  this.body,
                  style: regularText.copyWith(fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 6,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
