import 'package:flutter/material.dart';

class Rota8_1 extends StatefulWidget {
  const Rota8_1({Key? key}) : super(key: key);

  @override
  State<Rota8_1> createState() => _Rota8_1State();
}

class _Rota8_1State extends State<Rota8_1> {
  String dialogo = "Olá amigo!";
  String texto =
      "if(numero == 1){ \n System.out.println(\"Esse número é igual a 1\") \n } \n else{\n System.out.println(\"Esse não é igual a 1\") \n}";
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
                  child: Container(
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
                                    "Você se lembra quando estavamos aprendendo sobre estruturas de repetição";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo =
                                    "O \"while\" repetia até que uma determinada condição fosse violada";
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo =
                                    "Agora você vai aprender que podemos implementar condições nos nosso códigos";
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo = "É bem fácil!";
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo =
                                    "Basta utilizar os comandos \"if\" (se) e \"else\" (se não)";
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo =
                                    "No \"if\" você passa uma condição e o que o código deve fazer se ela for verdadeira";
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo =
                                    "No \"else\" informa o que o código deve fazer se a condição do \"if\" for falsa";
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo = "Observe o exemplo";
                                visivel3 = true;
                              });
                            }
                            if (contador == 9) {
                              setState(() {
                                dialogo =
                                    "SE o número for igual a um, o código informa que o número é um";
                              });
                            }
                            if (contador == 10) {
                              setState(() {
                                dialogo =
                                    "SE NÃO o código informa que o número é diferente de um";
                              });
                            }
                            if (contador == 11) {
                              setState(() {
                                dialogo = "Espero que tenha ficado claro";
                                visivel3 = false;
                              });
                            }
                            if (contador == 12) {
                              setState(() {
                                dialogo =
                                    "Pois temos um último problema pra resolver em frente";
                              });
                            }
                            if (contador == 13) {
                              setState(() {
                                dialogo = "Te vejo lá";
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
                                  .pushReplacementNamed('/dialogo8_2');
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
