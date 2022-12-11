import 'package:flutter/material.dart';

class Rota6_3 extends StatefulWidget {
  const Rota6_3({Key? key}) : super(key: key);

  @override
  State<Rota6_3> createState() => _Rota6_3State();
}

class _Rota6_3State extends State<Rota6_3> {
  String dialogo = "Olá amigo!";
  String texto =
      "public void fazerSorvete() \n { \n Random sabor = new Random() \n  String Escolher = sabor.nextString() \n}";
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
                    child: Image.asset('assets/images/maquina_sorvete.png')),
                Visibility(
                  visible: visivel3,
                  child: Container(
                    width: 400,
                    height: 130,
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
                                dialogo = "Obrigado por me ajudar com os bolos";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo =
                                    "Também comprei uma máquina de sorvete";
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo = "Bem bonita né?";
                                visivel4 = true;
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo =
                                    "Ela possui esse método na sua programação";
                                visivel3 = true;
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo =
                                    "Por algum motivo o seu inventor fez com que ela escolhesse os sabores aleatóriamente";
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo =
                                    "Usando a função Random, que escolhe valores aleatóriamente";
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo =
                                    "Então ele escolhe o sabor e faz apenas um sorvete desse sabor";
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo =
                                    "Bem maluco, porém acho que seja bom para ter um fator surpresa";
                              });
                            }
                            if (contador == 9) {
                              setState(() {
                                dialogo =
                                    "Mas também quero fazer mais sorvetes para minha festa";
                              });
                            }
                            if (contador == 10) {
                              setState(() {
                                dialogo = "Você pode me ajudar nesse quesito?";
                                visivel3 = false;
                              });
                            }
                            if (contador == 11) {
                              setState(() {
                                dialogo =
                                    "Nossa!!! \n  Você realmente é um ajudante maravilhoso";
                              });
                            }
                            if (contador == 12) {
                              setState(() {
                                dialogo = "Vejo você em breve";
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
                                  .pushReplacementNamed('/exercicio6_2');
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
