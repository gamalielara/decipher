import 'package:decipher/theme/colors.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: AppThemeColor.dark,
                ),
                child: SvgPicture.asset(
                  "assets/svg/chevron-left.svg",
                  color: AppThemeColor.textWhite,
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
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: AppThemeColor.dark,
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/save.svg",
                      color: AppThemeColor.textWhite,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10),
          child: TextField(
            style:
                boldText.copyWith(fontSize: 35, color: AppThemeColor.textWhite),
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Note Title",
              hintStyle: boldText.copyWith(
                  fontSize: 35, color: AppThemeColor.textWhite),
            ),
          ),
        )
      ],
    );
  }
}
