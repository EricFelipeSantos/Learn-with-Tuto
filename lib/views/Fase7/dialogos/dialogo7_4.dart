import 'package:flutter/material.dart';
import 'package:learn_with_tuto/jogador.dart';
import 'package:learn_with_tuto/main.dart';

class Rota7_4 extends StatefulWidget {
  const Rota7_4({Key? key}) : super(key: key);

  @override
  State<Rota7_4> createState() => _Rota7_4State();
}

class _Rota7_4State extends State<Rota7_4> {
  String dialogo = "Olá amigo!";
  String texto = "for (int i = 0; i < 6; i++){ \n liquidificador[i] = \"laranja\"; \n }";
  String imagem = 'assets/images/liquidificador_vazio.png';
  int contador = 0;
  bool visivel1 = true;
  bool visivel2 = false;
  bool visivel3 = false;
  bool visivel4 = false;
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
                Visibility(visible: visivel3, child: Image.asset(imagem)),
                Visibility(
                  visible: visivel4,
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
                                    "Sabia que é possível inserir coisas no vetor com estruturas de repetição";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo = "Vou dar um exemplo";
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo = "Quero fazer um suco de laranja";
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo =
                                    "Para isso tenho que colocar 5 laranjas nesse liquidificador";
                                visivel3 = true;
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo =
                                    "Sem a estrutura de repetição eu iria colocar apenas uma laranja";
                                imagem = 'assets/images/laranja.png';
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo =
                                    "Usando um \"for\" posso inserir todas as laranjas de uma vez e já bater o meu suco";
                                visivel4 = true;
                                imagem =
                                    'assets/images/liquidificador_cheio.png';
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo =
                                    "Agora posso desfrutar de um belo copo de suco";
                                visivel4 = false;
                                imagem = 'assets/images/suco_laranja.png';
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo = "Até mais";
                                visivel1 = false;
                                visivel2 = true;
                                visivel3 = false;
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
                                            pontuacao: 7));
                          });
                            if (contador >= 2) {
                              Navigator.of(context)
                                  .pushReplacementNamed('/password_8');
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
