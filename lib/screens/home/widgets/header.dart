import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/colors.dart';
import '../../../theme/text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  const Radius.circular(50),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/me.jpeg",
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              "Hello, Ara Gamaliel!",
              style: semiBoldText.copyWith(fontSize: 20),
            ),
          ],
        ),
        SvgPicture.asset(
          "assets/svg/hamburger-menu.svg",
          color: AppThemeColor.light,
          width: 35,
          height: 35,
        ),
      ],
    );
  }
}
