import 'package:cyber_scene/screens/cryptography_test_screen.dart';
import 'package:flutter/material.dart';

class CryptographyInfoScreen extends StatelessWidget {
  static const String id = 'cryptography_info_screen';
  const CryptographyInfoScreen(
      {Key? key,
      required this.title,
      required this.content,
      required this.image,
      required this.cipher})
      : super(key: key);

  final String title;
  final String content;
  final String image;
  final String cipher;

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
              Container(
                margin: const EdgeInsets.only(right: 70),
                child: AppBar(
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
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'ComicNeue-Regular',
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        content,
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
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Image.asset(
                  image,
                  height: 210,
                  width: 375,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 30, bottom: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton.extended(
                      backgroundColor: const Color.fromARGB(255, 3, 170, 162),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CryptogtaphyTestScreen(
                                title: title, cipher: cipher),
                          ),
                        );
                      },
                      label: Row(
                        children: const [
                          Text(
                            'Test cipher',
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
            ],
          ),
        ),
      ),
    );
  }
}
