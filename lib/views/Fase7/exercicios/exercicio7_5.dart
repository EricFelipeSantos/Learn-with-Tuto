import 'package:flutter/material.dart';

class Exercicio7_5 extends StatefulWidget {
  const Exercicio7_5({Key? key}) : super(key: key);

  @override
  State<Exercicio7_5> createState() => _Exercicio7_5State();
}

class _Exercicio7_5State extends State<Exercicio7_5> {
  String instrucao = "Selecione a fruta correta";
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
                        child: Image.asset('assets/images/cesta_frutas4.png'),
                    ),
                    Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(173, 236, 192, 110),
                          border: Border.all(
                            color: Colors.brown,
                          ),
                        ),
                        child: Text(
                            "banana, morango, maçã, uva e abacaxi" ,
                            style: TextStyle(
                              color: Colors.brown,
                              fontFamily: 'PressStart',
                              fontSize: 10.0,
                            ),
                          ),
                        )),
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
                          Navigator.of(context).pushReplacementNamed('/dialogo7_3');
                              });
                        },
                        child: Text("Abacaxi")),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("ERRO!"),
                                  content: Text("Que pena... Você errou.")
                                );
                              });
                        },
                        child: Text("Melão"))),
                    ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("ERRO!"),
                                  content: Text("Que pena... Você errou.")
                                );
                              });
                        },
                        child: Text("Melancia")),
                      ],
                    )
                  ]),
                ]),
        ),);
  }
}