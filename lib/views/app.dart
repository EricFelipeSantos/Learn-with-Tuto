import 'package:flutter/material.dart';
import 'package:learn_with_tuto/views/Fase1/dialogo1.dart';
import 'package:learn_with_tuto/views/Fase1/exercicio1.dart';
import 'package:learn_with_tuto/views/Fase1/password_2.dart';
import 'package:learn_with_tuto/views/Fase1/splash1.dart';
import 'package:learn_with_tuto/views/Fase2/dialogo2.dart';
import 'package:learn_with_tuto/views/Fase2/exercicio2.dart';
import 'package:learn_with_tuto/views/Fase2/password_3.dart';
import 'package:learn_with_tuto/views/Fase2/splash2.dart';
import 'package:learn_with_tuto/views/Fase3/dialogo3.dart';
import 'package:learn_with_tuto/views/Fase3/exercicio3.dart';
import 'package:learn_with_tuto/views/Fase3/password_4.dart';
import 'package:learn_with_tuto/views/Fase3/splash3.dart';
import 'package:learn_with_tuto/views/Fase4/dialogo4.dart';
import 'package:learn_with_tuto/views/Fase4/exercicio4.dart';
import 'package:learn_with_tuto/views/Fase4/password_5.dart';
import 'package:learn_with_tuto/views/Fase4/splash4.dart';
import 'package:learn_with_tuto/views/Fase5/dialogos/dialogo5_1.dart';
import 'package:learn_with_tuto/views/Fase5/dialogos/dialogo5_2.dart';
import 'package:learn_with_tuto/views/Fase5/dialogos/dialogo5_3.dart';
import 'package:learn_with_tuto/views/Fase5/dialogos/dialogo5_4.dart';
import 'package:learn_with_tuto/views/Fase5/dialogos/password_6.dart';
import 'package:learn_with_tuto/views/Fase5/dialogos/splash5.dart';
import 'package:learn_with_tuto/views/Fase5/exercicios/exercicio5_1.dart';
import 'package:learn_with_tuto/views/Fase5/exercicios/exercicio5_2.dart';
import 'package:learn_with_tuto/views/Fase5/exercicios/exercicio5_3.dart';
import 'package:learn_with_tuto/views/Fase6/dialogos/dialogo6_1.dart';
import 'package:learn_with_tuto/views/Fase6/dialogos/dialogo6_2.dart';
import 'package:learn_with_tuto/views/Fase6/dialogos/dialogo6_3.dart';
import 'package:learn_with_tuto/views/Fase6/dialogos/dialogo6_4.dart';
import 'package:learn_with_tuto/views/Fase6/dialogos/password_7.dart';
import 'package:learn_with_tuto/views/Fase6/dialogos/splash6.dart';
import 'package:learn_with_tuto/views/Fase6/exercicios/exercicio6_1.dart';
import 'package:learn_with_tuto/views/Fase6/exercicios/exercicio6_2.dart';
import 'package:learn_with_tuto/views/Fase6/exercicios/exercicio6_3.dart';
import 'package:learn_with_tuto/views/Fase7/dialogos/dialogo7_1.dart';
import 'package:learn_with_tuto/views/Fase7/dialogos/dialogo7_2.dart';
import 'package:learn_with_tuto/views/Fase7/dialogos/dialogo7_3.dart';
import 'package:learn_with_tuto/views/Fase7/dialogos/dialogo7_4.dart';
import 'package:learn_with_tuto/views/Fase7/dialogos/password_8.dart';
import 'package:learn_with_tuto/views/Fase7/dialogos/splash7.dart';
import 'package:learn_with_tuto/views/Fase7/exercicios/exercicio7_1.dart';
import 'package:learn_with_tuto/views/Fase7/exercicios/exercicio7_2.dart';
import 'package:learn_with_tuto/views/Fase7/exercicios/exercicio7_3.dart';
import 'package:learn_with_tuto/views/Fase7/exercicios/exercicio7_4.dart';
import 'package:learn_with_tuto/views/Fase7/exercicios/exercicio7_5.dart';
import 'package:learn_with_tuto/views/Fase8/dialogos/dialogo8_1.dart';
import 'package:learn_with_tuto/views/Fase8/dialogos/dialogo8_2.dart';
import 'package:learn_with_tuto/views/Fase8/dialogos/dialogo8_3.dart';
import 'package:learn_with_tuto/views/Fase8/dialogos/password_final.dart';
import 'package:learn_with_tuto/views/Fase8/dialogos/splash8.dart';
import 'package:learn_with_tuto/views/Fase8/exercicios/exercicio8_1.dart';
import 'package:learn_with_tuto/views/Fase8/exercicios/exercicio8_2.dart';
import 'package:learn_with_tuto/views/Fase8/exercicios/exercicio8_3.dart';
import 'package:learn_with_tuto/views/Fase8/exercicios/exercicio8_4.dart';
import 'package:learn_with_tuto/views/Final/final.dart';
import 'package:learn_with_tuto/views/Final/dialogo_final.dart';
import 'package:learn_with_tuto/views/Inicio/inicio.dart';
import 'package:learn_with_tuto/views/Inicio/login.dart';
import 'package:learn_with_tuto/views/Inicio/password_1.dart';
import 'package:learn_with_tuto/views/Inicio/splash0.dart';
import 'package:learn_with_tuto/views/Password/password.dart';
import 'package:learn_with_tuto/views/Pontuacao/pontuacao.dart';
import 'package:learn_with_tuto/views/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn with Tuto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => Login(),
        '/inicio': (context) => Inicio(),
        '/splash0': (context) => Splash0(),
        '/password': (context) => Password(),
        '/password_1': (context) => Password_1(),
        '/password_2': (context) => Password_2(),
        '/password_3': (context) => Password_3(),
        '/password_4': (context) => Password_4(),
        '/password_5': (context) => Password_5(),
        '/password_6': (context) => Password_6(),
        '/password_7': (context) => Password_7(),
        '/password_8': (context) => Password_8(),
        '/password_final': (context) => Password_final(),
        '/pontuacao': (context) => Pontuacao(),
        '/dialogo1': (context) => Rota1(),
        '/exercicio1': (context) => Exercicio1(),
        '/splash1': (context) => Splash1(),
        '/dialogo2': (context) => Rota2(),
        '/exercicio2': (context) => Exercicio2(),
        '/splash2':(context) => Splash2(),
        '/dialogo3': (context) => Rota3(),
        '/exercicio3': (context) => Exercicio3(),
        '/splash3':(context) => Splash3(),
        '/dialogo4': (context) => Rota4(),
        '/exercicio4': (context) => Exercicio4(),
        '/splash4':(context) => Splash4(),
        '/dialogo5_1': (context) => Rota5_1(),
        '/dialogo5_2': (context) => Rota5_2(),
        '/dialogo5_3': (context) => Rota5_3(),
        '/dialogo5_4': (context) => Rota5_4(),
        '/splash5':(context) => Splash5(),
        '/exercicio5_1': (context) => Exercicio5_1(),
        '/exercicio5_2': (context) => Exercicio5_2(),
        '/exercicio5_3': (context) => Exercicio5_3(),
        '/dialogo6_1': (context) => Rota6_1(),
        '/dialogo6_2': (context) => Rota6_2(),
        '/dialogo6_3': (context) => Rota6_3(),
        '/dialogo6_4': (context) => Rota6_4(),
        '/splash6':(context) => Splash6(),
        '/exercicio6_1': (context) => Exercicio6_1(),
        '/exercicio6_2': (context) => Exercicio6_2(),
        '/exercicio6_3': (context) => Exercicio6_3(),
        '/dialogo7_1': (context) => Rota7_1(),
        '/dialogo7_2': (context) => Rota7_2(),
        '/dialogo7_3': (context) => Rota7_3(),
        '/dialogo7_4': (context) => Rota7_4(),
        '/splash7':(context) => Splash7(),
        '/exercicio7_1': (context) => Exercicio7_1(),
        '/exercicio7_2': (context) => Exercicio7_2(),
        '/exercicio7_3': (context) => Exercicio7_3(),
        '/exercicio7_4': (context) => Exercicio7_4(),
        '/exercicio7_5': (context) => Exercicio7_5(),
        '/dialogo8_1': (context) => Rota8_1(),
        '/dialogo8_2': (context) => Rota8_2(),
        '/dialogo8_3': (context) => Rota8_3(),
        '/splash8':(context) => Splash8(),
        '/exercicio8_1': (context) => Exercicio8_1(),
        '/exercicio8_2': (context) => Exercicio8_2(),
        '/exercicio8_3': (context) => Exercicio8_3(),
        '/exercicio8_4': (context) => Exercicio8_4(),
        '/dialogo_final': (context) => Rota_final(),
        '/final': (context) => FinalPage()
      },
    );
  }
}
