import 'package:flutter/material.dart';

class Splash8 extends StatefulWidget {
  @override
  _Splash8State createState() => _Splash8State();
}

class _Splash8State extends State<Splash8> {
  String imagem = 'assets/images/loading1.png';
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.of(context).pushReplacementNamed('/dialogo_final');
    });

    Future.delayed(const Duration(seconds: 1),
    () {
        setState((){
          imagem = 'assets/images/loading2.png';
        });
    });

    Future.delayed(const Duration(seconds: 2),
    () {
        setState((){
          imagem = 'assets/images/loading3.png';
        });
    });

    Future.delayed(const Duration(seconds: 3),
    () {
        setState((){
          imagem = 'assets/images/loading4.png';
        });
    });
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Column(children: [
        SizedBox(height: h / 4),
        Container(
            child: Column(
          children: [
            Image.asset(imagem),
          ],
        ))
      ]),
    );
  }
}
