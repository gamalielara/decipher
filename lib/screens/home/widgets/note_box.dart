import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';

class NoteBox extends StatelessWidget {
  final Color color;

  const NoteBox({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double widthFactor = 0.45;

        final double noteBoxHeight = 200;

        return Container(
          width: constraints.maxWidth * widthFactor,
          height: noteBoxHeight,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: this.color, borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A Note",
                style: semiBoldText.copyWith(fontSize: 20),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              SizedBox(height: 10),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: regularText.copyWith(fontSize: 16),
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ],
          ),
        );
      },
    );
  }
}
