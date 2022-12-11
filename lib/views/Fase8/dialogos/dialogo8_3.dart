import 'package:flutter/material.dart';
import 'package:learn_with_tuto/jogador.dart';
import 'package:learn_with_tuto/main.dart';

class Rota8_3 extends StatefulWidget {
  const Rota8_3({Key? key}) : super(key: key);

  @override
  State<Rota8_3> createState() => _Rota8_3State();
}

class _Rota8_3State extends State<Rota8_3> {
  String dialogo = "Olá amigo!";
  String texto =
      "Lista de tarefas \n Arrumar o encanamento da casa SE ele estiver pingando, \n Regar as flores do jardim SE elas estiverem secas, \n Varrer a sala SE ela estiver suja, \n Colocar lenha na lareira SE ela estiver apagando.";
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
                        Image.asset('assets/images/encanamento_consertado.png'),
                        Image.asset('assets/images/flores_saudaveis.png'),
                        Image.asset('assets/images/sala_de_estar.png'),
                        Image.asset('assets/images/lareira_acesa.png'),
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
                                dialogo =
                                    "Muito obrigado por me ajudar com as minhas tarefas";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo =
                                    "Agora todas elas estão feitas. \n Veja!";
                                visivel3 = true;
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo = "Muito obrigado por sua ajuda!!!";
                                visivel3 = false;
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo = "Acabaram as liçôes";
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo =
                                    "Mas tenho uma mensagem muito especial para você";
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo =
                                    "Só vou arrumar tudo hehe";
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo = "Garanto que você vai gostar";
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo = "Até lá";
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
                                            pontuacao: 8));
                          });
                            if (contador >= 2) {
                              Navigator.of(context)
                                  .pushReplacementNamed('/password_final');
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
