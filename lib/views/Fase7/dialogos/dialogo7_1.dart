import 'package:flutter/material.dart';

class Rota7_1 extends StatefulWidget {
  const Rota7_1({Key? key}) : super(key: key);

  @override
  State<Rota7_1> createState() => _Rota7_1State();
}

class _Rota7_1State extends State<Rota7_1> {
  String dialogo = "Olá amigo!";
  String texto = "int numeros = new int [10];";
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
                                    "Lembra quando eu disse que as variáveis apenas guardavam uma informação?";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo =
                                    "Existe uma maneira de fazer elas guardarem bem mais!";
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo = "São os vetores!!!";
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo =
                                    "Eles permitem que você armazene a quantidade de elementos que você desejar";
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo = "Observe o exemplo";
                                visivel3 = true;
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo = "Esse vetor armazena números";
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo =
                                    "10 pra ser exato, já que o número entre couchetes é a quantidade que o vetor armazena";
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo = "Espero que tenha ficado claro";
                                visivel3 = false;
                              });
                            }
                            if (contador == 9) {
                              setState(() {
                                dialogo =
                                    "Pois temos um problema pra resolver logo a frente";
                              });
                            }
                            if (contador == 10) {
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
                                  .pushReplacementNamed('/dialogo7_2');
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
