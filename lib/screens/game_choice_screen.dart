import 'package:cyber_scene/screens/crytography_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameChoiceScreen extends StatelessWidget {
  static const String id = 'game_choice_screen';
  const GameChoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/landing_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.info),
                ),
              ],
              automaticallyImplyLeading: false,
              title: Text(
                'CyberScene',
                style: GoogleFonts.bungeeHairline(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 25,
                  shadows: [
                    const Shadow(
                      blurRadius: 2.0,
                      color: Color.fromARGB(255, 3, 170, 162),
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, CryptographyScreen.id);
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20, right: 50, left: 50),
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 30, 131, 172),
                child: const Center(
                  child: Text(
                    'Cryptography',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20, right: 50, left: 50),
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 30, 131, 172),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20, right: 50, left: 50),
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 30, 131, 172),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
