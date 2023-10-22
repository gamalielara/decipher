import 'package:decipher/theme/colors.dart';
import 'package:flutter/material.dart';

TextStyle regularText = TextStyle(
    fontFamily: "Figtree",
    fontWeight: FontWeight.w500,
    color: AppThemeColor.textWhite,
    decoration: TextDecoration.none);

TextStyle semiBoldText = regularText.copyWith(fontWeight: FontWeight.w600);

TextStyle italicText = regularText.copyWith(fontStyle: FontStyle.italic);

TextStyle boldText = regularText.copyWith(fontWeight: FontWeight.w700);
