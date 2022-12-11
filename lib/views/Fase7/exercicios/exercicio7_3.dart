import 'package:flutter/material.dart';

class Exercicio7_3 extends StatefulWidget {
  const Exercicio7_3({Key? key}) : super(key: key);

  @override
  State<Exercicio7_3> createState() => _Exercicio7_3State();
}

class _Exercicio7_3State extends State<Exercicio7_3> {
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
                        child: Image.asset('assets/images/cesta_frutas2.png'),
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
                                  title: Text("ERRO!"),
                                  content: Text("Que pena... Você errou."),
                                  );
                              });
                        },
                        child: Text("Mamão")),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: ElevatedButton(
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
                          Navigator.of(context).pushReplacementNamed('/exercicio7_4');
                              });
                        },
                        child: Text("Maçã"))),
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
                        child: Text("Jaca")),
                      ],
                    )
                  ]),
                ]),
        ),);
  }
}