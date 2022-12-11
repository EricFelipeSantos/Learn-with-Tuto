import 'package:flutter/material.dart';

class Rota5_2 extends StatefulWidget {
  const Rota5_2({Key? key}) : super(key: key);

  @override
  State<Rota5_2> createState() => _Rota5_2State();
}

class _Rota5_2State extends State<Rota5_2> {
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
              child:Image.asset('assets/images/caixa.png')
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
                                "Parece que hoje vou receber as peças de um robô danificado";
                          });
                        }
                        if (contador == 2) {
                          setState(() {
                            dialogo =
                                "Vou precisar que você utilize seus conhecimentos de variáveis";
                          });
                        }
                        if (contador == 3) {
                          setState(() {
                            dialogo = "Para me ajudar a organizar as peças em caixas como a que está abaixo";
                            visivel3 = true;
                          });
                        }
                        if (contador == 4) {
                          setState(() {
                            dialogo =
                                "Se tudo der certo vou enviar elas para o conserto";
                          });
                        }
                        if (contador == 5) {
                          setState(() {
                            dialogo =
                                "E nosso amigo metálico poderá andar denovo";
                          });
                        }
                        if (contador == 6) {
                          setState(() {
                            dialogo =
                                "Confio no seu potencial e sei que dará conta do recado";
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
                              .pushReplacementNamed('/exercicio5_1');
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
