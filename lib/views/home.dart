import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/tela.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Learn with Tuto',
                    style: TextStyle(
                      fontFamily: 'PressStart',
                      fontSize: 20.0,
                    ),
                  ),
                  Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/login');
                  },
                  icon: const Icon(Icons.arrow_right_rounded),
                  label: const Text('Jogar'))),
                  ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/password');
                  },
                  icon: const Icon(Icons.restore_rounded),
                  label: const Text('Password')),
                  ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/pontuacao');
                  },
                  icon: const Icon(Icons.star_rounded),
                  label: const Text('Pontuação'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
