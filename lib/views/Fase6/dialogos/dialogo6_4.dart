import 'package:flutter/material.dart';
import 'package:learn_with_tuto/jogador.dart';
import 'package:learn_with_tuto/main.dart';

class Rota6_4 extends StatefulWidget {
  const Rota6_4({Key? key}) : super(key: key);

  @override
  State<Rota6_4> createState() => _Rota6_4State();
}

class _Rota6_4State extends State<Rota6_4> {
  String dialogo = "Olá amigo!";
  int contador = 0;
  bool visivel1 = true;
  bool visivel2 = false;
  bool visivel3 = false;
  Jogador jogador = box.get('jogador');
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
                    child: Column(
                      children: [
                        Image.asset('assets/images/bolo_baunilha.png'),
                        Image.asset('assets/images/bolo_chocolate.png'),
                        Image.asset('assets/images/bolo_morango.png'),
                        Image.asset('assets/images/sorvete_baunilha.png'),
                        Image.asset('assets/images/sorvete_chocolate.png'),
                        Image.asset('assets/images/sorvete_morango.png'),
                      ],
                    )),
                Column(
                  children: [
                    Visibility(
                        visible: visivel1,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            contador += 1;
                            if (contador == 1) {
                              setState(() {
                                dialogo = "Valeu pela ajuda";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo =
                                    "Graças a você a festa foi um sucesso";
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo =
                                    "E ainda sobrou um bolo e sorvete de cada sabor";
                                visivel3 = true;
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo = "Nínguem quis o sorvete de chocolate";
                                visivel3 = false;
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo = "Acho que cada um com seu gosto hehe";
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo = "Nós vemos na próxima lição";
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
                            setState(() {
                            box.put(
                                        'jogador',
                                        Jogador(
                                            nome: jogador.nome,
                                            idade: jogador.idade,
                                            pontuacao: 6));
                          });
                            if (contador >= 2) {
                              Navigator.of(context)
                                  .pushReplacementNamed('/password_7');
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
