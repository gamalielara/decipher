import 'package:decipher/theme/colors.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static final id = "login_screen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppThemeColor.bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "decipher.",
            style: regularText.copyWith(fontSize: 60),
          ),
          SizedBox(height: 25),
          FractionallySizedBox(
            widthFactor: 0.75,
            child: Text(
              "Create notes from you and just for you. No one will ever be able to decipher your notes",
              style: regularText.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 25),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: AppThemeColor.primary,
            ),
            child: Text(
              "Login with Google",
              style: semiBoldText,
            ),
          ),
        ],
      ),
    );
  }
}
