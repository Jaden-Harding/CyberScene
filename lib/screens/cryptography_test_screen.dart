import 'package:cyber_scene/constants.dart';
import 'package:cyber_scene/screens/cryptography_main_screen.dart';
import 'package:cyber_scene/screens/cryptography_solve_screen.dart';
import 'package:flutter/material.dart';

class CryptogtaphyTestScreen extends StatefulWidget {
  static const String id = 'cryptography_test_screen';
  const CryptogtaphyTestScreen(
      {Key? key, required this.cipher, required this.title})
      : super(key: key);

  final String cipher;
  final String title;

  @override
  State<CryptogtaphyTestScreen> createState() => _CryptogtaphyTestScreenState();
}

class _CryptogtaphyTestScreenState extends State<CryptogtaphyTestScreen> {
  String cryptInput = "";
  String cryptOutput = "";
  int cryptSwitch = 0;
  bool nextVisible = false;
  bool solutionVisible = false;
  bool clearVisibile = false;
  bool secondInput = true;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.cipher == "caeser") {
      secondInput = true;
    } else if (widget.cipher == "polybius") {
      secondInput = false;
    }
    setState(() {});
  }

  void caesarCipher(String input, int shift) {
    String output = "";

    input = input.toLowerCase();

    for (int i = 0; i < input.length; i++) {
      if (String.fromCharCode(input.codeUnitAt(i)) == " ") {
        output += " ";
      } else if (String.fromCharCode(input.codeUnitAt(i)) == "'") {
        output += "'";
      } else {
        String ch =
            String.fromCharCode((input.codeUnitAt(i) + shift - 97) % 26 + 97);
        output += ch.toString();
      }
    }

    cryptOutput = output;

    setState(() {});
  }

  void polybiusCipher(String input) {
    int j = 0;
    var alphaArray = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];
    var numArray = [
      '11',
      '12',
      '13',
      '14',
      '15',
      '21',
      '22',
      '23',
      '24',
      '24',
      '25',
      '31',
      '32',
      '33',
      '34',
      '35',
      '41',
      '42',
      '43',
      '44',
      '45',
      '51',
      '52',
      '53',
      '54',
      '55'
    ];
    String output = "";
    for (int i = 0; i < input.length; i++) {
      if (String.fromCharCode(input.codeUnitAt(i)) == ' ') {
        output += " ";
      } else if (String.fromCharCode(input.codeUnitAt(i)) == "'") {
        output += "";
      } else {
        while (String.fromCharCode(input.codeUnitAt(i)) != alphaArray[j]) {
          j++;
        }
        output += numArray[j];
        j = 0;
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
                leading: IconButton(
                  icon: const Icon(
                    Icons.keyboard_return_outlined,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
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
                      margin: const EdgeInsets.only(left: 10, right: 20),
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
                    IconButton(
                      icon: const Icon(
                        Icons.home,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, CryptographyScreen.id);
                      },
                    ),
                  ],
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  widget.title,
                  style: const TextStyle(
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
                  controller: _controller1,
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
                      hintText: 'Enter a sentence to encrypt'),
                ),
              ),
              Visibility(
                visible: secondInput,
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: TextField(
                    controller: _controller2,
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
                        hintText: 'Enter number of right shift'),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 3, 170, 162),
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (cryptInput != "") {
                      if (widget.cipher == "caesar" && cryptSwitch != 0) {
                        caesarCipher(cryptInput, cryptSwitch);
                      } else if (widget.cipher == "polybius") {
                        polybiusCipher(cryptInput);
                      }

                      nextVisible = true;
                      solutionVisible = true;
                      clearVisibile = true;
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
                visible: solutionVisible,
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: const Color.fromARGB(255, 207, 207, 207)
                        .withOpacity(0.4),
                  ),
                  padding: const EdgeInsets.all(15),
                  width: 380,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: Align(
                      alignment: Alignment.center,
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
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Visibility(
                        visible: clearVisibile,
                        child: Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 40, bottom: 20),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: FloatingActionButton.extended(
                                  backgroundColor:
                                      const Color.fromARGB(255, 3, 170, 162),
                                  onPressed: () {
                                    clearVisibile = false;
                                    solutionVisible = false;
                                    _controller1.clear();
                                    _controller2.clear();
                                    cryptOutput = "";
                                    cryptInput = "";
                                    cryptSwitch = 0;
                                    setState(() {});
                                  },
                                  label: Row(
                                    children: const [
                                      Text(
                                        'Clear',
                                        style: TextStyle(
                                            fontFamily: 'ComicNeue-Regular',
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: nextVisible,
                        child: Expanded(
                          child: Container(
                            margin:
                                const EdgeInsets.only(right: 20, bottom: 20),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: FloatingActionButton.extended(
                                  backgroundColor:
                                      const Color.fromARGB(255, 3, 170, 162),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            CryptographySolveScreen(
                                                title: widget.title,
                                                cipher: widget.cipher),
                                      ),
                                    );
                                  },
                                  label: const Text(
                                    'Solve cipher',
                                    style: TextStyle(
                                        fontFamily: 'ComicNeue-Regular',
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
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
