import 'package:decipher/screens/home/widgets/body.dart';
import 'package:decipher/screens/home/widgets/header.dart';
import 'package:decipher/theme/colors.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  static final id = "home_screen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppThemeColor.bgColor,
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
            child: Stack(
                children: [
                  Header(),
                  Body(),
                ],
            ),
        ));
  }
}
