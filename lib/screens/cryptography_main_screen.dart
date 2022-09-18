import 'package:flutter/material.dart';
import 'package:cyber_scene/screens/cryptography_info_screen.dart';

class CryptographyScreen extends StatefulWidget {
  static const String id = 'cryptography_screen';
  const CryptographyScreen({Key? key}) : super(key: key);

  @override
  State<CryptographyScreen> createState() => _CryptographyScreenState();
}

class _CryptographyScreenState extends State<CryptographyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_return_outlined,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Container(
          margin: const EdgeInsets.only(left: 20),
          child: Row(
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
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/landing_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: const Color.fromARGB(255, 207, 207, 207)
                        .withOpacity(0.4),
                  ),
                  padding: const EdgeInsets.all(15),
                  width: 380,
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Cryptography',
                            style: TextStyle(
                              fontFamily: 'Roboto-Regular',
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 28,
                              shadows: [
                                Shadow(
                                  blurRadius: 1.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  offset: Offset(1, 2),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'the practice of techniques for secure communication, by means of encryption and decryption, often using ciphers.',
                        style: TextStyle(
                          fontFamily: 'Roboto-Regular',
                          color: Colors.white,
                          fontSize: 20,
                          shadows: [
                            Shadow(
                              blurRadius: 1.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                              offset: Offset(1, 2),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: 200,
                height: 55,
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 3, 170, 162),
                  onPressed: () {
                    Navigator.pushNamed(context, CryptographyInfoScreen.id);
                  },
                  label: const Text(
                    'Easy',
                    style: TextStyle(
                      fontFamily: 'ComicNeue-Regular',
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: 200,
                height: 55,
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 3, 170, 162),
                  onPressed: () {},
                  label: const Text(
                    'Medium',
                    style: TextStyle(
                        fontFamily: 'ComicNeue-Regular',
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: 200,
                height: 55,
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 3, 170, 162),
                  onPressed: () {},
                  label: const Text(
                    'Hard',
                    style: TextStyle(
                        fontFamily: 'ComicNeue-Regular',
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
