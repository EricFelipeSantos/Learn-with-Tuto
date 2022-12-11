import 'package:flutter/material.dart';
import 'package:learn_with_tuto/main.dart';
import 'package:learn_with_tuto/jogador.dart';

class Pontuacao extends StatefulWidget {
  const Pontuacao({Key? key}) : super(key: key);

  @override
  State<Pontuacao> createState() => _PontuacaoState();
}

class _PontuacaoState extends State<Pontuacao> {
  @override
  Jogador jogador = box.get('jogador');
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  SizedBox(height:100),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Nome:",
                        style: TextStyle(
                        fontFamily: 'PressStart',
                        fontSize: 20.0,
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("${jogador.nome}", 
                        style: TextStyle(
                        fontFamily: 'PressStart',
                        fontSize: 15.0,
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Idade:", 
                        style: TextStyle(
                        fontFamily: 'PressStart',
                        fontSize: 20.0,
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("${jogador.idade}", 
                        style: TextStyle(
                        fontFamily: 'PressStart',
                        fontSize: 15.0,
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Pontuação:", 
                        style: TextStyle(
                        fontFamily: 'PressStart',
                        fontSize: 20.0,
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("${jogador.pontuacao}", 
                        style: TextStyle(
                        fontFamily: 'PressStart',
                        fontSize: 15.0,
                          ),
                      ),
                    ),
                    ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                    icon: const Icon(Icons.arrow_left_rounded),
                    label: const Text('Voltar'))
              ]),
        ),
      ),
    );
  }
}
