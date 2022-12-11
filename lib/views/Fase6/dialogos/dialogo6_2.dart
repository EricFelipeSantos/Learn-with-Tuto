import 'package:flutter/material.dart';

class Rota6_2 extends StatefulWidget {
  const Rota6_2({Key? key}) : super(key: key);

  @override
  State<Rota6_2> createState() => _Rota6_2State();
}

class _Rota6_2State extends State<Rota6_2> {
  String dialogo = "Olá amigo!";
  String texto =
      "public void fazerBolo() \n { \n saborChocolate; \n saborMorango; \n saborBaunilha; \n }";
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
                    visible: visivel4,
                    child: Image.asset('assets/images/maquina_bolo.png')),
                Visibility(
                  visible: visivel3,
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
                                dialogo =
                                    "Consegui comprar uma máquina que faz bolos";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo = "Olha essa belezura";
                                visivel4 = true;
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo =
                                    "Ela possui esse método na sua programação";
                                visivel3 = true;
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo =
                                    "O que permite que ela faça apenas um bolo de cada sabor e pare";
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo =
                                    "Mas eu quero fazer esses sabores em maior quantidade, para uma festa que vou fazer";
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo = "Você pode me ajudar?";
                                visivel3 = false;
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo = "Ótimo!!!";
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo =
                                    "Sempre soube que podia contar com você";
                              });
                            }
                            if (contador == 9) {
                              setState(() {
                                dialogo = "Até logo";
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
                                  .pushReplacementNamed('/exercicio6_1');
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
