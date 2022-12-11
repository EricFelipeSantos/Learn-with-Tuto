import 'package:flutter/material.dart';

class Exercicio6_3 extends StatefulWidget {
  const Exercicio6_3({Key? key}) : super(key: key);

  @override
  State<Exercicio6_3> createState() => _Exercicio6_3State();
}

class _Exercicio6_3State extends State<Exercicio6_3> {
  String instrucao = "Qual a condição que deverá estar presente no while? \n Sabendo que \"!=\" significa diferente";
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
                        child: Image.asset('assets/images/maquina_sorvete.png'),
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
                          Navigator.of(context).pushReplacementNamed('/dialogo6_4');
                              });
                        },
                        child: Text("Escolher != chocolate")),
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
                        child: Text("Escolher == chocolate"))),
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
                        child: Text("Escolher <= chocolate")),
                      ],
                    )
                  ]),
                ]),
        ),
        );
  }
}