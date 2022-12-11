import 'package:flutter/material.dart';

class Rota6_1 extends StatefulWidget {
  const Rota6_1({Key? key}) : super(key: key);

  @override
  State<Rota6_1> createState() => _Rota6_1State();
}

class _Rota6_1State extends State<Rota6_1> {
  String dialogo = "Olá amigo!";
  String texto =
      "for (int i = 0; i < 11; i++) { \n System.out.println(\"Isso foi repetido \" + i + \" vezes\"); \n }";
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
                height: 120,
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
                                    "Já imaginou se nos execícios anteriores eu te pedisse pra fazer a mesma coisa 80 vezes";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo = "Daria um baita trabalho não é?";
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo =
                                    "Ainda bem que temos estruturas que repetem partes do código";
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo =
                                    "Existem três tipos dessas estruturas sendo elas: for, while e do while";
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo = "Começando pelo \"for\"";
                                visivel3 = true;
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo =
                                    "O \"for\" repete o comando um número determinado de vezes, sendo que nesse exemplo ele repetirá 10 vezes";
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo =
                                    "Sendo o i a variável responsável pela repetição";
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo =
                                    "Nesse exemplo ela é iniciada em 0, seu valor não pode passar de 11, devido ao \"i<11\", e a cada repetição seu valor é aumentado em 1, por conta do \"i++\"";
                              });
                            }
                            if (contador == 9) {
                              setState(() {
                                dialogo =
                                    "O \"while\" repete algo indefinidamente até que sua condição seja violada";
                                texto =
                                    "while (gostoChiclete = true) { \n mascarChiclete() \n }";
                              });
                            }
                            if (contador == 10) {
                              setState(() {
                                dialogo =
                                    "No exemplo, o programa irá \"mascar o chiclete\" até que ele não tenha mais gosto";
                              });
                            }
                            if (contador == 11) {
                              setState(() {
                                dialogo =
                                    "Se a condição for violada logo de cara, o código não vai executar nenhuma vez";
                              });
                            }
                            if (contador == 12) {
                              setState(() {
                                dialogo =
                                    "A ideia do \"do while\" é a mesma do while";
                                texto =
                                    "do { \n mascarChiclete() \n } while (gostoChiclete = true);";
                              });
                            }
                            if (contador == 13) {
                              setState(() {
                                dialogo =
                                    "A única diferença é que se a condição for violada logo de cara, o código vai executar uma vez ";
                              });
                            }
                            if (contador == 13) {
                              setState(() {
                                dialogo =
                                    "Mais a frente precisarei da sua ajuda e do seu conhecimento sobre esses conceitos";
                              });
                            }
                            if (contador == 14) {
                              setState(() {
                                dialogo = "Até a próxima";
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
                                  .pushReplacementNamed('/dialogo6_2');
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
