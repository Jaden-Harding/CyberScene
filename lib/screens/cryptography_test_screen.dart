import 'package:cyber_scene/constants.dart';
import 'package:cyber_scene/screens/cryptography_solve_screen.dart';
import 'package:flutter/material.dart';

class CryptogtaphyTestScreen extends StatefulWidget {
  static const String id = 'cryptography_test_screen';
  const CryptogtaphyTestScreen({Key? key}) : super(key: key);

  @override
  State<CryptogtaphyTestScreen> createState() => _CryptogtaphyTestScreenState();
}

class _CryptogtaphyTestScreenState extends State<CryptogtaphyTestScreen> {
  String cryptInput = "";
  String cryptOutput = "";
  int cryptSwitch = 0;
  bool isVisible = false;

  void caesarCipher(String input, int shift) {
    String output = "";

    input = input.toLowerCase();

    for (int i = 0; i < input.length; i++) {
      if (String.fromCharCode(input.codeUnitAt(i)) == ' ') {
        output += ' ';
      } else {
        String ch =
            String.fromCharCode((input.codeUnitAt(i) - shift - 97) % 26 + 97);
        output += ch.toString();
      }
    }

    cryptOutput = output;

    setState(() {});
  }

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
              Container(
                margin: const EdgeInsets.all(15),
                child: TextField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    cryptInput = value;
                  },
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto-Regular',
                    fontSize: 18,
                  ),
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Sentence to encrypt (all lowercase)'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    cryptSwitch = int.parse(value);
                  },
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto-Regular',
                    fontSize: 18,
                  ),
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Number of left shift'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 3, 170, 162),
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (cryptInput != "" && cryptSwitch != 0)
                    {
                      caesarCipher(cryptInput, cryptSwitch);
                    isVisible = true;
                    setState(() {});
                    }
                  },
                  label: const Text(
                    'Encrypt',
                    style: TextStyle(
                      fontFamily: 'ComicNeue-Regular',
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isVisible,
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color:
                        const Color.fromARGB(255, 207, 207, 207).withOpacity(0.4),
                  ),
                  padding: const EdgeInsets.all(15),
                  width: 380,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        cryptOutput,
                        style: const TextStyle(
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
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isVisible,
                child: Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 30, bottom: 20),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton.extended(
                          backgroundColor: const Color.fromARGB(255, 3, 170, 162),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, CryptographySolveScreen.id);
                          },
                          label: Row(
                            children: const [
                              Text(
                                'Solve cipher',
                                style: TextStyle(
                                    fontFamily: 'ComicNeue-Regular',
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        )),
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
