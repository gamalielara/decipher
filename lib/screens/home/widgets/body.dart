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
        )
      ],
    );
  }
}
