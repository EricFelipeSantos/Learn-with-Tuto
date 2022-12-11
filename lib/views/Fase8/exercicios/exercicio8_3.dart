import 'package:flutter/material.dart';

class Exercicio8_3 extends StatefulWidget {
  const Exercicio8_3({Key? key}) : super(key: key);

  @override
  State<Exercicio8_3> createState() => _Exercicio8_3State();
}

class _Exercicio8_3State extends State<Exercicio8_3> {
  String instrucao = "O que eu devo fazer?";
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
                        child: Image.asset('assets/images/sala_de_estar.png'),
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
                        child: Center(
                          child: Text(
                              "Varrer a sala SE ela estiver suja" ,
                              style: TextStyle(
                                color: Colors.brown,
                                fontFamily: 'PressStart',
                                fontSize: 10.0,
                              ),
                            ),
                        ),
                        )),
                    Column(
                      children: [
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
                          Navigator.of(context).pushReplacementNamed('/exercicio8_4');
                              });
                      },
                      child: Text("não fazer nada"))),
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
                      child: Text("varrer a sala")),
                      ],
                    )
                  ]),
                ]),
        ),);
  }
}