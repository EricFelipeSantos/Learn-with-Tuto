import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  String instrucao = "Insira o password";
  int contador = 0;
  final _controllerPassword = TextEditingController();
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
              TextField(
                controller: _controllerPassword,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {
                        if(_controllerPassword.text == 'Hello'){
                          Navigator.of(context).pushReplacementNamed('/dialogo1');
                        }
                        else if(_controllerPassword.text == 'Classe'){
                          Navigator.of(context).pushReplacementNamed('/dialogo2');
                        }
                        else if(_controllerPassword.text == 'Atributo'){
                          Navigator.of(context).pushReplacementNamed('/dialogo3');
                        }
                        else if(_controllerPassword.text == 'Metodo'){
                          Navigator.of(context).pushReplacementNamed('/dialogo4');
                        }
                        else if(_controllerPassword.text == 'Variavel'){
                          Navigator.of(context).pushReplacementNamed('/dialogo5_1');
                        }
                        else if(_controllerPassword.text == 'Repeticao'){
                          Navigator.of(context).pushReplacementNamed('/dialogo6_1');
                        }
                        else if(_controllerPassword.text == 'Vetor'){
                          Navigator.of(context).pushReplacementNamed('/dialogo7_1');
                        }
                        else if(_controllerPassword.text == 'Condicao'){
                          Navigator.of(context).pushReplacementNamed('/dialogo8_1');
                        }
                        else if(_controllerPassword.text == 'Final'){
                          Navigator.of(context).pushReplacementNamed('/dialogo_final');
                        }
                        else {
                          showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Password incorreto!!!"),
                                      content: Text("Tente novamente"),
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
