import 'package:cyber_scene/screens/crytography_screen.dart';
import 'package:cyber_scene/screens/landing_screen.dart';
import 'package:cyber_scene/screens/game_choice_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => const LandingScreen(),
        GameChoiceScreen.id: (context) => const GameChoiceScreen(),
        CryptographyScreen.id: (context) => const CryptographyScreen(),
      },
    );
  }
}
