import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cyber_scene/screens/game_choice_screen.dart';

class LandingScreen extends StatefulWidget {
  static const String id = 'landing_screen';
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OutlinedButton (
          onPressed: () {
            Navigator.pushNamed(context, GameChoiceScreen.id);
          },
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/landing_background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      'CyberScene',
                      style: GoogleFonts.blackOpsOne(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 65,
                        shadows: [
                          const Shadow(
                            blurRadius: 20.0,
                            color: Color.fromARGB(255, 8, 241, 241),
                            offset: Offset(3, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 170.0,
                ),
                SizedBox(
                  width: 250,
                  child: DefaultTextStyle(
                    style: GoogleFonts.mouseMemoirs(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: AnimatedTextKit(
                        pause: const Duration(milliseconds: 50),
                        repeatForever: true,
                        animatedTexts: [
                          FlickerAnimatedText(
                            'Tap to Play...',
                          ),
                        ],
                        onTap: () {
                          print('Tap event');
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
