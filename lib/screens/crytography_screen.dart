import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          icon: const Icon(Icons.arrow_left_outlined,
              color: Color.fromARGB(255, 3, 170, 162)),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/landing_background.jpg'),
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
                        .withOpacity(0.15),
                  ),
                  padding: const EdgeInsets.all(15),
                  width: 380,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Cryptography',
                            style: GoogleFonts.comicNeue(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'the practice of techniques for secure communication, by means of encryption and decryption, often using ciphers.',
                        style: GoogleFonts.comicNeue(
                          color: Colors.white,
                          fontSize: 20,
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
                  onPressed: () {},
                  label: Text(
                    'Easy',
                    style: GoogleFonts.comicNeue(
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
                  label: Text(
                    'Medium',
                    style: GoogleFonts.comicNeue(
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
                  label: Text(
                    'Hard',
                    style: GoogleFonts.comicNeue(
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
