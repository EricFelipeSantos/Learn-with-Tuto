import 'package:flutter/material.dart';

class Rota2 extends StatefulWidget {
  const Rota2({Key? key}) : super(key: key);

  @override
  State<Rota2> createState() => _Rota2State();
}

class _Rota2State extends State<Rota2> {
  bool visivel1 = true;
  bool visivel2 = false;
  bool visivel3 = false;
  String dialogo = "Agora iremos aprender sobre orientação a objetos";
  int contador = 0;
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
                      "Bola \n Formiga \n Maçã",
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
                                "Observe que as três palavras abaixo são objetos";
                            visivel3 = true;
                          });
                        }
                        if (contador == 2) {
                          setState(() {
                            dialogo = "Podemos classifica-las em classes";
                          });
                        }
                        if (contador == 3) {
                          setState(() {
                            dialogo =
                                "Reespectivamente brinquedo, animal e fruta";
                          });
                        }
                        if (contador == 4) {
                          setState(() {
                            visivel1 = false;
                            visivel2 = true;
                            dialogo = "Classes são como grupos no qual os objetos pertencem";
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
                        if (contador >= 3) {
                          Navigator.of(context)
                              .pushReplacementNamed('/exercicio2');
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
