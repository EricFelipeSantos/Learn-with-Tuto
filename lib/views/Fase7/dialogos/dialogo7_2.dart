import 'package:flutter/material.dart';

class Rota7_2 extends StatefulWidget {
  const Rota7_2({Key? key}) : super(key: key);

  @override
  State<Rota7_2> createState() => _Rota7_2State();
}

class _Rota7_2State extends State<Rota7_2> {
  String dialogo = "Olá amigo!";
  String texto = "String cestaDeFrutas = new String [5];";
  int contador = 0;
  bool visivel1 = true;
  bool visivel2 = false;
  bool visivel3 = false;
  bool visivel4 = false;
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
                    child: Image.asset('assets/images/cesta_frutas.png')),
                Visibility(
                  visible: visivel4,
                  child: Container(
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
                      texto,
                      style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'PressStart',
                        fontSize: 10.0,
                      ),
                    )),
                  ),
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
                                dialogo = "Comprei uma cesta de frutas";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo = "Bem bonita não acha?";
                                visivel3 = true;
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo =
                                    "Mas eu queria colocar algumas frutas pra deixar ela ainda mais incrível";
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo = "Bem ela é um vetor de frutas";
                                visivel4 = true;
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo =
                                    "Você poderia colocar algumas frutas nela por favor?";
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo = "Eu preciso das seguintes frutas:";
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo =
                                    "banana, morango, maçã, uva e abacaxi";
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo =
                                    "Acredito que não será difícil pra você";
                              });
                            }
                            if (contador == 9) {
                              setState(() {
                                dialogo = "Te vejo em breve";
                                visivel1 = false;
                                visivel2 = true;
                                visivel3 = false;
                                visivel4 = false;
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
                                  .pushReplacementNamed('/exercicio7_1');
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
