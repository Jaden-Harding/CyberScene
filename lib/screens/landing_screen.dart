import 'dart:async';
import 'dart:ffi';

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

class _LandingScreenState extends State<LandingScreen>
    with SingleTickerProviderStateMixin {
  double progress = 0;
  bool readyIsVisible = false;
  bool loadingIsVisible = true;

  @override
  void initState() {
    super.initState();

    AnimationController controller = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    );

    controller.forward();

    controller.addListener(() {
      progress = controller.value;
      setState(() {});
    });
  }

  void afterLoad() {
    readyIsVisible = true;
    loadingIsVisible = false;

    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 7),
      afterLoad,
    );

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/landing_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: OutlinedButton(
          onPressed: readyIsVisible
              ? () {
                  Navigator.pushNamed(context, GameChoiceScreen.id);
                }
              : null,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Center(
                  child: Text(
                    'CyberScene',
                    style: GoogleFonts.bungeeHairline(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 55,
                      shadows: [
                        const Shadow(
                          blurRadius: 2.0,
                          color: Color.fromARGB(255, 3, 170, 162),
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 200.0,
              ),
              Visibility(
                visible: readyIsVisible,
                child: SizedBox(
                  width: 250,
                  child: DefaultTextStyle(
                    style: GoogleFonts.comicNeue(
                      fontSize: 34,
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
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: loadingIsVisible,
                child: Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 300,
                      height: 9,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: LinearProgressIndicator(
                          value: progress,
                          backgroundColor: Colors.grey[700],
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color.fromARGB(255, 3, 170, 162),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 110,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
