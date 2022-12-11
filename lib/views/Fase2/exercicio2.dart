import 'package:flutter/material.dart';
import 'package:learn_with_tuto/jogador.dart';
import 'package:learn_with_tuto/main.dart';
class Exercicio2 extends StatefulWidget {
  const Exercicio2({Key? key}) : super(key: key);

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  String instrucao = "Assinale a opção que classifica as palavras";
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
              Column(children: [
                Container(
                  width: 400,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        " " + instrucao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PressStart',
                          fontSize: 10.0,
                        ),
                      )),
                ),
                Image.asset('assets/images/tuto.png'),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: 300,
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
                          "Borboleta, Girassol e Suco",
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'PressStart',
                            fontSize: 8.0,
                          ),
                        ),
                      ),
                    )),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Parabéns"),
                                  content: Text("Você acertou"),
                                );
                              });
                          setState(() {
                            box.put(
                                        'jogador',
                                        Jogador(
                                            nome: jogador.nome,
                                            idade: jogador.idade,
                                            pontuacao: 2));
                          });
                          Future.delayed(const Duration(seconds: 3), () {
                            Navigator.of(context)
                                .pushReplacementNamed('/password_3');
                          });
                        },
                        child: Text("Animal, Planta, Bebida")),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("ERRO!"),
                                      content: Text("Que pena... Você errou."),
                                    );
                                  });
                            },
                            child: Text("Brinquedo, Comida, Bebida"))),
                    ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("ERRO!"),
                                  content: Text("Que pena... Você errou."),
                                );
                              });
                        },
                        child: Text("Animal, Planta, Profissão")),
                  ],
                )
              ]),
            ]),
      ),
    );
  }
}
