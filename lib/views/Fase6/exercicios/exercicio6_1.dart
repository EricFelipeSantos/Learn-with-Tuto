import 'package:flutter/material.dart';

class Exercicio6_1 extends StatefulWidget {
  const Exercicio6_1({Key? key}) : super(key: key);

  @override
  State<Exercicio6_1> createState() => _Exercicio6_1State();
}

class _Exercicio6_1State extends State<Exercicio6_1> {
  String instrucao = "Eu quero fazer 10 bolos de chocolate, 15 de morango e 5 de baunilha \n Qual é a estrutura de repetição que eu devo usar?";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[200],
        body: SingleChildScrollView(
              padding: EdgeInsets.all(32),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(children: [
                  Container(
                    width: 400,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          " " + instrucao,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PressStart',
                            fontSize: 10.0,
                          ),
                        )),
                  ),
                  Image.asset('assets/images/tuto.png'),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/maquina_bolo.png'),
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("ERRO!"),
                                content: Text("Que pena... Você errou."),
                                );
                            });
                      },
                      child: Text("While")),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("ERRO!"),
                                content: Text("Que pena... Você errou."),
                              );
                            });
                      },
                      child: Text("Do While"))),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Parabéns"),
                                content: Text("Você acertou"),
                              );
                            });
                        Future.delayed(const Duration(seconds: 3), () {
                              Navigator.of(context).pushReplacementNamed('/dialogo6_3');
                            });
                        
                      },
                      child: Text("For")),
                    ],
                  )
                ]),
              ]),
        ),);
  }
}
