import 'package:decipher/screens/home/home_screen.dart';
import 'package:decipher/screens/login_screen.dart';
import 'package:decipher/screens/note/main.dart';
import 'package:decipher/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      theme: ThemeData(
        fontFamily: "Figtree",
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: AppThemeColor.primary,
          onPrimary: AppThemeColor.white,
          secondary: AppThemeColor.secondary,
          onSecondary: AppThemeColor.white,
          error: AppThemeColor.dark,
          onError: AppThemeColor.white,
          background: AppThemeColor.light,
          onBackground: AppThemeColor.white,
          surface: AppThemeColor.secondary,
          onSurface: AppThemeColor.white,
        ),
      ),
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        NoteScreen.id: (context) => NoteScreen(),
      },
    );
  }
}
