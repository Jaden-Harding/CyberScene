import 'package:flutter/material.dart';

class CryptographySolveScreen extends StatefulWidget {
  static const String id = 'cryptography_solve_screen';
  const CryptographySolveScreen({Key? key}) : super(key: key);

  @override
  State<CryptographySolveScreen> createState() => _CryptographySolveScreenState();
}

class _CryptographySolveScreenState extends State<CryptographySolveScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                child: const Text(
                  'Caesar Cipher',
                  style: TextStyle(
                    fontFamily: 'ComicNeue-Regular',
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 40,
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