import 'package:flutter/material.dart';
import 'package:learn_with_tuto/jogador.dart';
import 'package:learn_with_tuto/main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String instrucao = "Insira seu nome e sua idade";
  int contador = 0;
  final _controllerNome = TextEditingController();
  final _controllerIdade = TextEditingController();
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
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: 300,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        instrucao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PressStart',
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: _controllerNome,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: 'Nome',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              TextField(
                controller: _controllerIdade,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Idade',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {
                        if(_controllerIdade.text != '' && _controllerNome.text != ''){
                          setState(() {
                          box.put(
                              'jogador',
                              Jogador(
                                  nome: _controllerNome.text,
                                  idade: int.parse(_controllerIdade.text),
                                  pontuacao: 0));
                        });
                        Navigator.of(context).pushReplacementNamed('/inicio');
                        } 

                        else {
                          showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Erro!!!"),
                                      content: Text("Insira os dados!"),
                                    );
                                  });
                        }
                      },
                      child: Text("Enviar")))
            ]),
      ),
    );
  }
}
