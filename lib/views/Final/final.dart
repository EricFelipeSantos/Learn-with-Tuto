import 'package:flutter/material.dart';

class FinalPage extends StatelessWidget {
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
        child: Column(
          children: [
            Image.asset('assets/images/parabens.png'),
            SizedBox(
            width: 200,
            height: 100,
            child: const Text(
                'Agora você pode ingressar no mundo da programação',
                style: TextStyle(
                  fontFamily: 'PressStart',
                  fontSize: 10.0,
                ),
              ),
            ),
            Center(
              child:ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  icon: const Icon(Icons.arrow_right_rounded),
                  label: const Text('Jogar novamente'))),
          ],
        ),
      ),
    );
  }
}
