import 'package:flutter/material.dart';

class Rota_final extends StatefulWidget {
  const Rota_final({Key? key}) : super(key: key);

  @override
  State<Rota_final> createState() => _Rota_finalState();
}

class _Rota_finalState extends State<Rota_final> {
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
                    child: Image.asset('assets/images/baloes.png'),
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
                                    "Como você se saiu muito bem nos desafios";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo =
                                    "Esses balões são pra você";
                                visivel3 = true;
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo = "Espero que você tenha se interessado pelo mundo da programação";
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo = "Tenho esperança de te encontrar outra vez";
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo = "Ainda tem uma última supresa pra você na próxima tela";
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo = "Adeus!";
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
                                  .pushReplacementNamed('/final');
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
