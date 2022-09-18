import 'package:cyber_scene/screens/cryptography_main_screen.dart';
import 'package:flutter/material.dart';

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
            image: AssetImage('assets/images/landing_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Logo.png',
                    height: 35,
                    width: 35,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'CyberScene',
                      style: TextStyle(
                        fontFamily: 'BungeeHarline-Regular',
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 25,
                        shadows: [
                           Shadow(
                            blurRadius: 2.0,
                            color: Color.fromARGB(255, 3, 170, 162),
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, CryptographyScreen.id);
                },
                child: Container(
                  margin: const EdgeInsets.only(
                      bottom: 20, top: 20, right: 50, left: 50),
                  height: 180,
                  width: 180,
                  color: const Color.fromARGB(255, 3, 170, 162),
                  child: const Center(
                    child: Text(
                      'Cryptography',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: Container(
                  margin: const EdgeInsets.only(
                      bottom: 20, top: 20, right: 50, left: 50),
                  height: 180,
                  width: 180,
                  color: const Color.fromARGB(255, 3, 170, 162),
                ),
              ),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: Container(
                  margin: const EdgeInsets.only(
                      bottom: 20, top: 20, right: 50, left: 50),
                  height: 180,
                  width: 180,
                  color: const Color.fromARGB(255, 3, 170, 162),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
