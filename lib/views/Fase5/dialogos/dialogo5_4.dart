import 'package:flutter/material.dart';
import 'package:learn_with_tuto/jogador.dart';
import 'package:learn_with_tuto/main.dart';

class Rota5_4 extends StatefulWidget {
  const Rota5_4({Key? key}) : super(key: key);

  @override
  State<Rota5_4> createState() => _Rota5_4State();
}

class _Rota5_4State extends State<Rota5_4> {
  String dialogo = "Olá amigo!";
  String texto = "Caixa int = 2 \n Caixa String = D \n Caixa boolean = false";
  int contador = 0;
  bool visivel1 = true;
  bool visivel2 = false;
  bool visivel3 = false;
  bool visivel4 = false;
  bool visivel5 = false;
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
                        Image.asset('assets/images/caixa_string_cheia.png'),
                        Image.asset('assets/images/caixa_boolean_cheia.png'),
                        Image.asset('assets/images/caixa_int_cheia.png'),
                      ],
                    )),
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
                Visibility(
                    visible: visivel5,
                    child: Column(
                      children: [
                        Image.asset(
                            'assets/images/caixa_string_modificada.png'),
                        Image.asset(
                            'assets/images/caixa_boolean_modificada.png'),
                        Image.asset('assets/images/caixa_int_modificada.png'),
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
                                    " Parece que para sobraram algumas peças nas caixas do último exercício";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo = " Vamos dar um System.out.println";
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo =
                                    " Pois assim poderemos ver o que está dentro delas";
                              });
                            }
                            if (contador == 4) {
                              setState(() {
                                dialogo =
                                    "Ótimo, parece que é isso que elas andam guardando";
                                visivel3 = true;
                              });
                            }
                            if (contador == 5) {
                              setState(() {
                                dialogo =
                                    "É possível mudar seu valor igualando a variável a um outro valor";
                                visivel3 = false;
                                visivel4 = true;
                              });
                            }
                            if (contador == 6) {
                              setState(() {
                                dialogo =
                                    "Agora vamos dar um System.out.println para ver se os valores foram alterados";
                                visivel4 = false;
                              });
                            }
                            if (contador == 7) {
                              setState(() {
                                dialogo = "Eureka!!! Funcionou!";
                                visivel5 = true;
                              });
                            }
                            if (contador == 8) {
                              setState(() {
                                dialogo =
                                    "Sobre o tipo int é importante ressaltar que é possível realizar todas as operações matemáticas";
                                visivel4 = true;
                                visivel5 = false;
                                texto =
                                    " int soma = 1 + 2 \n int subtracao = 2 - 1 \n int divisao = 4 / 2 \n int multiplicacao = 2 * 3";
                              });
                            }
                            if (contador == 9) {
                              setState(() {
                                dialogo =
                                    "Sendo o sinal \"/\" para a divisão e o \"*\" para a multiplicação";
                              });
                            }
                            if (contador == 10) {
                              setState(() {
                                dialogo =
                                    "Sobre o tipo String é possível \"juntar\" elas com o sinal \"+\"";
                                texto =
                                    "String frase = \"Tuto\" + \" é \" + \"maravilhoso!\"";
                              });
                            }
                            if (contador == 11) {
                              setState(() {
                                dialogo =
                                    "Espero que essas curiosidades tenham sido úteis";
                                visivel4 = false;
                              });
                            }
                            if (contador == 12) {
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
                            setState(() {
                            box.put(
                                        'jogador',
                                        Jogador(
                                            nome: jogador.nome,
                                            idade: jogador.idade,
                                            pontuacao: 5));
                          });
                            if (contador >= 2) {
                              Navigator.of(context)
                                  .pushReplacementNamed('/password_6');
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
