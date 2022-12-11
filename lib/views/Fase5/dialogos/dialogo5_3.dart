import 'package:flutter/material.dart';

class Rota5_3 extends StatefulWidget {
  const Rota5_3({Key? key}) : super(key: key);

  @override
  State<Rota5_3> createState() => _Rota5_3State();
}

class _Rota5_3State extends State<Rota5_3> {
  String dialogo = "Olá amigo!";
  int contador = 0;
  bool visivel1 = true;
  bool visivel2 = false;
  bool visivel3 = false;
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
            Visibility(
              visible: visivel3,
              child:Image.asset('assets/images/robo_montado.png')
              ),
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
                                "Como você foi capaz de me ajudar a organizar as peças";
                          });
                        }
                        if (contador == 2) {
                          setState(() {
                            dialogo =
                                "Consegui enviar elas para o concerto com sucesso";
                          });
                        }
                        if (contador == 3) {
                          setState(() {
                            dialogo = "Ele deve aparescer a qualquer momento";
                          });
                        }
                        if (contador == 4) {
                          setState(() {
                            dialogo = "Olha ele aí";
                            visivel3 = true;
                          });
                        }
                        if (contador == 5) {
                          setState(() {
                            dialogo = "Nosso amigo metálico está mais inteiro do que a última vez que o vimos";
                          });
                        }
                        if (contador == 6) {
                          setState(() {
                            dialogo = "Com certeza ele está muito feliz com a nossa ajuda";
                          });
                        }
                        if (contador == 7) {
                          setState(() {
                            dialogo = "Você foi muito bem";
                            visivel3 = false;
                          });
                        }
                        if (contador == 8) {
                          setState(() {
                            dialogo = "Como recompensa vou te ensinar algumas curiosidades logo logo";
                          });
                        }
                        if (contador == 9) {
                          setState(() {
                            dialogo = "Até lá!";
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
                              .pushReplacementNamed('/dialogo5_4');
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
