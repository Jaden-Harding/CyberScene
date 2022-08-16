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
        child: Padding(
          padding: const EdgeInsets.only(top: 75),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  color:
                      const Color.fromARGB(255, 207, 207, 207).withOpacity(0.2),
                  width: 400,
                  height: 200,
                  child: const Text(
                    "Cryptography",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Easy',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
