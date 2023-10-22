import 'package:decipher/screens/login_screen.dart';
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
      ),
      routes: {LoginScreen.id: (context) => LoginScreen()},
    );
  }
}
