import 'package:flutter/material.dart';
import 'package:learn_with_tuto/jogador.dart';
import 'package:learn_with_tuto/main.dart';

class Exercicio1 extends StatefulWidget {
  const Exercicio1({Key? key}) : super(key: key);

  @override
  State<Exercicio1> createState() => _Exercicio1State();
}

class _Exercicio1State extends State<Exercicio1> {
  String instrucao = "O que você gostaria de me dizer";
  int contador = 0;
  bool visivel1 = true;
  bool visivel2 = false;
  final _controllerTexto = TextEditingController();
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
                Visibility(
                    visible: visivel1,
                    child: Column(
                      children: [
                        TextField(
                          controller: _controllerTexto,
                          decoration: InputDecoration(
                              labelText: 'Texto',
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: ElevatedButton(
                                onPressed: () {
                                  if(_controllerTexto.text != ''){
                                    setState(() {
                                    visivel1 = false;
                                    visivel2 = true;
                                    instrucao =
                                        "Agora selecione como você iria escrever para printar essa mensagem na tela";
                                  });
                                  }
                                  else {
                                    showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text("Qual é!!!"),
                                                content: Text("Me diga alguma coisa!"),
                                              );
                                            });
                                  }
                                },
                                child: Text("Enviar")))
                      ],
                    )),
                Column(
                  children: [
                    Visibility(
                        visible: visivel2,
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
                            child: Text(
                                "System.out.println[${_controllerTexto.text}];"))),
                    Visibility(
                        visible: visivel2,
                        child: Padding(
                            padding: EdgeInsets.all(20),
                            child: ElevatedButton(
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
                                            pontuacao: 1));
                                  });
                                  Future.delayed(const Duration(seconds: 3),
                                      () {
                                    Navigator.of(context)
                                        .pushReplacementNamed('/password_2');
                                  });
                                },
                                child: Text(
                                    "System.out.println(\" ${_controllerTexto.text} \");")))),
                    Visibility(
                        visible: visivel2,
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
                            child: Text(
                                "System.out.println{\" ${_controllerTexto.text} \"};"))),
                  ],
                )
              ]),
            ]),
      ),
    );
  }
}
