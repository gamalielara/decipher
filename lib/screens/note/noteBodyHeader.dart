import 'package:decipher/theme/colors.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoteBodyHeader extends StatelessWidget {
  const NoteBodyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius:
                  const BorderRadius.all(Radius.circular(10)),
                  color: AppThemeColor.light,
                ),
                child: SvgPicture.asset(
                  "assets/svg/chevron-left.svg",
                  color: AppThemeColor.dark,
                ),
              ),
            ),
            Wrap(
              spacing: 10,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius:
                      const BorderRadius.all(Radius.circular(10)),
                      color: AppThemeColor.light,
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/save.svg",
                      color: AppThemeColor.dark,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius:
                      const BorderRadius.all(Radius.circular(10)),
                      color: AppThemeColor.light,
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/hamburger-menu.svg",
                      color: AppThemeColor.dark,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top:10),
          child: Text(
            "Note Title",
            style: boldText.copyWith(
                fontSize: 35, color: AppThemeColor.textWhite),
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }
}
