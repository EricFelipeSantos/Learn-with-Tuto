import 'package:flutter/material.dart';
import 'package:learn_with_tuto/jogador.dart';
import 'package:learn_with_tuto/views/app.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;

Future<void> main() async {
  Hive.registerAdapter<Jogador>(JogadorAdapter());
  await Hive.initFlutter();
  box = await Hive.openBox('box');
  runApp(App());
}
