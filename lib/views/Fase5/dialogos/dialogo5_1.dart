import 'package:flutter/material.dart';

class Rota5_1 extends StatefulWidget {
  const Rota5_1({Key? key}) : super(key: key);

  @override
  State<Rota5_1> createState() => _Rota5_1State();
}

class _Rota5_1State extends State<Rota5_1> {
  String dialogo = "Olá amigo!";
  String imagem = 'assets/images/caixa_tuto_lindo.png';
  String tuto = 'assets/images/tuto.png';
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
                Image.asset(tuto),
                Visibility(
                    visible: visivel3,
                    child: Column(
                      children: [
                        Image.asset('assets/images/caixa_string.png'),
                        Image.asset('assets/images/caixa_boolean.png'),
                        Image.asset('assets/images/caixa_int.png'),
                      ],
                    )),
                Visibility(visible: visivel4, child: Image.asset(imagem)),
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
                                    "Agora vamos aprender o que são variáveis e pra que elas servem";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo =
                                    "Elas são como pequenas caixas em que armazenamos um tipo de informação";
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo = "Observe o exemplo";
                                visivel3 = true;
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo =
                                    "Como você observou temos três tipos de variáveis String, boolean e int";
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo =
                                    "Cada uma delas armazena um tipo de informação";
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo =
                                    "O boolean armazena valores verdadeiros ou falsos e é muito utilizado para verificar alguma coisa";
                                visivel3 = false;
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo =
                                    "Como por exemplo: boolean TutoLindo = true";
                                tuto = 'assets/images/tuto_feliz.png';
                                visivel4 = true;
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo =
                                    "É importante dizer que os valores são escritos em inglês: true (verdadeiro) e false (falso)";
                                tuto = 'assets/images/tuto.png';
                              });
                            }
                            if (contador == 9) {
                              setState(() {
                                dialogo = "A String armazena textos";
                                visivel4 = false;
                              });
                            }
                            if (contador == 10) {
                              setState(() {
                                dialogo =
                                    "Como você deve ter notado no exemplo ela está armazenando o meu nome";
                                imagem = 'assets/images/caixa_nome.png';
                                visivel4 = true;
                              });
                            }
                            if (contador == 11) {
                              setState(() {
                                dialogo =
                                    "E por fim temos o int que amarzena números";
                                visivel4 = false;
                              });
                            }
                            if (contador == 12) {
                              setState(() {
                                dialogo =
                                    "Que no exemplo está armazenando meu número favorito";
                                imagem =
                                    'assets/images/caixa_numero_favorito.png';
                                visivel4 = true;
                              });
                            }
                            if (contador == 13) {
                              setState(() {
                                dialogo =
                                    "Espero que tenha ficado claro, pois vou precisar da sua ajuda logo a frente";
                                visivel4 = false;
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
                                  .pushReplacementNamed('/dialogo5_2');
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
