import 'package:flutter/material.dart';

class Rota7_3 extends StatefulWidget {
  const Rota7_3({Key? key}) : super(key: key);

  @override
  State<Rota7_3> createState() => _Rota7_3State();
}

class _Rota7_3State extends State<Rota7_3> {
  String dialogo = "Olá amigo!";
  String texto = "banana, morango, maçã, uva, abacaxi";
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
                    child: Image.asset('assets/images/cesta_frutas5.png')),
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
                                dialogo = "Graças a você a cesta ficou linda!";
                                visivel3 = true;
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo =
                                    "Só por curiosidade vamos dar um System.out.println(cestaDeFrutas)";
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo =
                                    "Como você pode ver todas as frutas apareceram";
                                visivel4 = true;
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo =
                                    "Vou apresentar algumas curiosidade sobre os vetores em breve";
                                visivel4 = false;
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo = "Até breve";
                                visivel1 = false;
                                visivel2 = true;
                                visivel3 = false;
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
                                  .pushReplacementNamed('/dialogo7_4');
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
