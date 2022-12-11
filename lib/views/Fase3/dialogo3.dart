import 'package:flutter/material.dart';

class Rota3 extends StatefulWidget {
  const Rota3({Key? key}) : super(key: key);

  @override
  State<Rota3> createState() => _Rota3State();
}

class _Rota3State extends State<Rota3> {
  bool visivel1 = true;
  bool visivel2 = false;
  bool visivel3 = false;
  String dialogo = "Todo objeto possui atributos.";
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
                      "class animal \n { String nome; \n int idade; \n String som; \n}",
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
                        dialogo = "Observe o exemplo";
                        visivel3 = true;
                      });
                    }
                    if (contador == 2) {
                      setState(() {
                        dialogo =
                            "A classe animal tem os atributos nome, idade e som reespectivamente";
                      });
                    }
                    if (contador == 3) {
                      setState(() {
                        visivel1 = false;
                        visivel2 = true;
                        dialogo =
                            "Que funcionam como as características do objeto";
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
                      Navigator.of(context).pushReplacementNamed('/exercicio3');
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
