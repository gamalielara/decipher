import 'package:decipher/screens/note/main.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class NoteBox extends StatelessWidget {
  final Color color;
  final String title;
  final String body;
  final int createdAt;
  final int lastModified;

  const NoteBox(
      {super.key,
      required this.color,
      required this.title,
      required this.createdAt,
      required this.lastModified,
      required this.body});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        const double noteBoxHeight = 200;

        final createdAtDate = DateFormat("EEE, MMM d y")
            .format(DateTime.fromMillisecondsSinceEpoch(createdAt)).toString();

        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, NoteScreen.id);
          },
          child: Container(
            width: constraints.maxWidth,
            constraints: const BoxConstraints(
              minHeight: noteBoxHeight,
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: semiBoldText.copyWith(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 10),
                Text(
                  body,
                  textAlign: TextAlign.justify,
                  style: regularText.copyWith(fontSize: 14,),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 6,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  createdAtDate,
                  style: regularText.copyWith(fontSize: 14),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
