import 'package:flutter/material.dart';

class Password_4 extends StatefulWidget {
  const Password_4({Key? key}) : super(key: key);

  @override
  State<Password_4> createState() => _Password_4State();
}

class _Password_4State extends State<Password_4> {
  String dialogo = "Você passou pela terceira fase";
  int contador = 0;
  bool visivel1 = true;
  bool visivel2 = false;
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
                Column(
                  children: [
                    Visibility(
                        visible: visivel1,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            contador += 1;
                            if (contador == 1) {
                              setState(() {
                                dialogo = "Para ir direto para a quarta";
                              });
                            }
                            if (contador == 2) {
                              setState(() {
                                dialogo = "Use o seguinte password";
                              });
                            }
                            if (contador == 3) {
                              setState(() {
                                dialogo = "Metodo";
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
                            if (contador >= 2) {
                              Navigator.of(context)
                                  .pushReplacementNamed('/splash3');
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
