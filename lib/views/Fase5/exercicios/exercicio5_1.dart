import 'package:flutter/material.dart';

class Exercicio5_1 extends StatefulWidget {
  const Exercicio5_1({Key? key}) : super(key: key);

  @override
  State<Exercicio5_1> createState() => _Exercicio5_1State();
}

class _Exercicio5_1State extends State<Exercicio5_1> {
  String instrucao = "Com base no que você aprendeu, qual é a melhor caixa para guardar as peças?";
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
                      child: Image.asset('assets/images/peca_int.png'),
                  ),
                  Image.asset('assets/images/peca_int_2.png'),
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
                                title: Text("Parabéns"),
                                content: Text("Você acertou"),
                              );
                            });
                        Future.delayed(const Duration(seconds: 3), () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/exercicio5_2');
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