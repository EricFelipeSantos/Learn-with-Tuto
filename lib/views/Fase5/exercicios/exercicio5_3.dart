import 'package:flutter/material.dart';

class Exercicio5_3 extends StatefulWidget {
  const Exercicio5_3({Key? key}) : super(key: key);

  @override
  State<Exercicio5_3> createState() => _Exercicio5_3State();
}

class _Exercicio5_3State extends State<Exercicio5_3> {
  String instrucao = "Qual é a melhor caixa para guardar a peça?";
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
                      child: Image.asset('assets/images/peca_boolean.png'),
                  ),
                  Column(
                    children: [
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
                              Navigator.of(context)
                                  .pushReplacementNamed('/dialogo5_3');
                            });
                      },
                      child: Text("Caixa boolean")),
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
                      child: Text("Caixa String"))),
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
                      child: Text("Caixa int")),
                    ],
                  )
                ]),
              ]),
        ),  
      );
  }
}