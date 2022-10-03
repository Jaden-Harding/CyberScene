import 'package:cyber_scene/constants.dart';
import 'package:cyber_scene/screens/cryptography_main_screen.dart';
import 'package:flutter/material.dart';

class CryptographySolveScreen extends StatefulWidget {
  static const String id = 'cryptography_solve_screen';
  const CryptographySolveScreen(
      {Key? key, required this.cipher, required this.title})
      : super(key: key);

  final String cipher;
  final String title;

  @override
  State<CryptographySolveScreen> createState() =>
      _CryptographySolveScreenState();
}

class _CryptographySolveScreenState extends State<CryptographySolveScreen> {
  String cryptAttempt = "";
  bool isVisible = false;
  String btnName = "Next question";
  String question = "";
  String instructions = "";
  String imageLink = "";

  @override
  void initState() {
    super.initState();

    if (widget.cipher == "caesar") {
      question = "fred walks down the street";
      instructions = "Apply a right shift of 2 to the following sentence:";
      imageLink = 'assets/images/alphabet.jpg';
    } else if (widget.cipher == "polybius") {
      question = "jack grabs the apple";
      instructions =
          "Use the Polybius square to encrypt the following sentence:";
      imageLink = 'assets/images/polybius_square.png';
    }
  }

  double imageHeight () {
    if (widget.cipher == "caesar") {
      return 350.00;
    } else {
      return 300.00;
    }
  }
  

  final TextEditingController _controller = TextEditingController();
  int flag = 0;

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
                leading: IconButton(
                  icon: const Icon(
                    Icons.keyboard_return_outlined,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
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
                margin: const EdgeInsets.only(top: 10, bottom: 10),
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
                margin: const EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  instructions,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'ComicNeue-Regular',
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color:
                      const Color.fromARGB(255, 207, 207, 207).withOpacity(0.4),
                ),
                padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
                width: 380,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        question,
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
                      FlatButton(
                        child: const Icon(
                          Icons.info_outline,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Container(
                                    height: imageHeight(),
                                    width: 300,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(imageLink),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    cryptAttempt = value;
                  },
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto-Regular',
                    fontSize: 18,
                  ),
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter solution here (all lowercase)'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 3, 170, 162),
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (widget.cipher == "caesar") {
                      if (cryptAttempt == "") {
                      } else if (cryptAttempt == "htgf ycnmu fqyp vjg uvtggv") {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Correct"),
                                content: const Text("that is the solution!"),
                                actions: [
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Close'),
                                  )
                                ],
                              );
                            });
                        _controller.clear();
                        isVisible = true;
                        setState(() {});
                      } else if (cryptAttempt == "now i know caesar cipher") {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Correct"),
                                content: const Text("well done. You have mastered the caesar cipher."),
                                actions: [
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Close'),
                                  )
                                ],
                              );
                            });
                        _controller.clear();
                        btnName = "Cryptography menu";
                        isVisible = true;
                        flag++;
    
                        setState(() {});
                      }
                      else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Alert"),
                              content: const Text("your solution is incorrect."),
                              actions: [
                                FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Close'),
                                )
                              ],
                            );
                          });
                    }
                    } else if (widget.cipher == "polybius") {
                      if (cryptAttempt == "") {
                      } else if (cryptAttempt ==
                          "24111325 2242111243 442315 1135353115") {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Correct"),
                                content: const Text("that is the solution!"),
                                actions: [
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Close'),
                                  )
                                ],
                              );
                            });
                        _controller.clear();
                        isVisible = true;
                        setState(() {});
                      } else if (cryptAttempt ==
                          "polybius is easy") {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Correct"),
                                content: const Text("excellent! You have mastered the polybius cipher."),
                                actions: [
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Close'),
                                  )
                                ],
                              );
                            });
                        _controller.clear();
                        btnName = "Cryptography menu";
                        isVisible = true;
                        flag++;
    
                        setState(() {});
                      }
                      else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Alert"),
                              content: const Text("your solution is incorrect."),
                              actions: [
                                FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Close'),
                                )
                              ],
                            );
                          });
                    }
                    } 
                  },
                  label: const Text(
                    'Solve',
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
                child: Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 30, bottom: 30),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton.extended(
                          backgroundColor: const Color.fromARGB(255, 3, 170, 162),
                          onPressed: () {
                            if (flag == 0) {
                              if (widget.cipher == "caesar") {
                                instructions =
                                    "Apply a right shift of 3 to the following sentence:";
                                question = "qrz l nqrz fdhvdu flskhu";
                              }
                              else if (widget.cipher == "polybius")
                              {
                                instructions = "Use the Polybius square to decrypt the following sentence:";
                                question = "3534315412244543 2443 15114354";
                              }
    
                              _controller.clear();
                              isVisible = false;
    
                              setState(() {});
                            } else {
                              Navigator.pushNamed(context, CryptographyScreen.id);
                            }
                          },
                          label: Row(
                            children: [
                              Text(
                                btnName,
                                style: const TextStyle(
                                    fontFamily: 'ComicNeue-Regular',
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),
                              ),
                              const Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
