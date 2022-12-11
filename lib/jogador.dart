import 'package:hive/hive.dart';

part 'jogador.g.dart';

@HiveType(typeId: 1)
class Jogador {
  Jogador({required this.nome, required this.idade, required this.pontuacao});
  @HiveField(0)
  String nome;

  @HiveField(1)
  int idade;

  @HiveField(2)
  int pontuacao;
}
