import 'package:flutter/material.dart';

class GameChoiceScreen extends StatelessWidget {
  static const String id = 'game_choice_screen';
  const GameChoiceScreen({Key? key}) : super(key: key);

  // Navigator.pushNamed(context, RegistrationScreen.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/landing_background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    'YoYo',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 65,
                      shadows: [
                        Shadow(
                          blurRadius: 20.0,
                          color: Color.fromARGB(255, 8, 241, 241),
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
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
