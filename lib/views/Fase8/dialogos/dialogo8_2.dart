import 'package:flutter/material.dart';

class Rota8_2 extends StatefulWidget {
  const Rota8_2({Key? key}) : super(key: key);

  @override
  State<Rota8_2> createState() => _Rota8_2State();
}

class _Rota8_2State extends State<Rota8_2> {
  String dialogo = "Olá amigo!";
  String texto =
      "Lista de tarefas \n Arrumar o encanamento da casa SE ele estiver pingando, \n Regar as flores do jardim SE elas estiverem secas, \n Varrer a sala SE ela estiver suja, \n Colocar lenha na lareira SE ela estiver apagando.";
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
                  child: Padding(
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
                          " " + texto,
                          style: TextStyle(
                            color: Colors.brown,
                            fontFamily: 'PressStart',
                            fontSize: 10.0,
                          ),
                        ),
                      )),
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
                                    "Preciso que você me ajude com uma lista de tarefas que eu tenho que fazer";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo = "Dê uma olhada nela";
                                visivel3 = true;
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo =
                                    "SE uma condição for verdadeira eu tenho que realizar a tarefa";
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo = "SE NÃO eu não farei nada";
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo =
                                    "Você poderia me dizer o que fazer com base nessas instruções";
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo =
                                    "Sem sua ajuda possso acabar me enrolando com as tarefas";
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo = "Você pode me ajudar?";
                                visivel3 = false;
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo = "Maravilha!!!";
                              });
                            }
                            if (contador == 9) {
                              setState(() {
                                dialogo =
                                    "Você é o melhor ajudante que esse humilde robô poderia querer";
                              });
                            }
                            if (contador == 10) {
                              setState(() {
                                dialogo = "Até breve";
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
                                  .pushReplacementNamed('/exercicio8_1');
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
