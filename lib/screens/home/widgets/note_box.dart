import 'package:flutter/cupertino.dart';

class NoteBox extends StatelessWidget {
  final Color color;

  const NoteBox({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double widthFactor = 0.45;

        return Container(
          width: constraints.maxWidth * widthFactor,
          height: 200,
          decoration: BoxDecoration(
              color: this.color, borderRadius: BorderRadius.circular(10)),
        );
      },
    );
  }
}
