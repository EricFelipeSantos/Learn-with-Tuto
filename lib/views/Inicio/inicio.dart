import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  String dialogo = "Olá jogador!";
  int contador = 0;
  bool visivel1 = true;
  bool visivel2 = false;
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
            Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                    " " + dialogo,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PressStart',
                      fontSize: 10.0,
                    ),
                  )),
                ),
            Image.asset('assets/images/tuto.png'),
            Column(
              children: [
                Visibility(
                    visible: visivel1,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        contador += 1;
                        if (contador == 1) {
                          setState(() {
                            dialogo =
                                "Meu nome é Tuto";
                          });
                        }
                        if (contador == 2) {
                          setState(() {
                            dialogo =
                                "E eu vou ser o seu guia no aprendizado da linguagem de programação Java";
                          });
                        }
                        if (contador == 3) {
                          setState(() {
                            dialogo =
                                "Em cada fase você vai aprender conceitos novos e realizará exercicios para reforçá-los";
                          });
                        }
                        if (contador == 4) {
                          setState(() {
                            dialogo =
                                "Além disso seu progresso será recuperado a partir de passwords que você recebera ao final de cada fase";
                          });
                        }
                        if (contador == 5) {
                          setState(() {
                            dialogo =
                                "Vamos começar";
                            visivel1 = false;
                            visivel2 = true;
                          });
                        }
                      },
                      icon: Icon(Icons.arrow_forward_rounded),
                      label: Text("Avançar texto"),
                    )),
                Visibility(
                    visible: visivel2,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (contador >= 2) {
                          Navigator.of(context)
                              .pushReplacementNamed('/password_1');
                        }
                      },
                      icon: Icon(Icons.arrow_forward_rounded),
                      label: Text("Avançar página"),
                    ))
              ],
            ),
          ]),
    ));
  }
}
