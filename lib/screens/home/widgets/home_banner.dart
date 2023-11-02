import 'package:flutter/cupertino.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Image.asset(
          "assets/images/header.jpg",
          fit: BoxFit.cover,
        ),
    );
  }
}
