import 'dart:convert';
import 'package:projetos_dart/classe_pessoa.dart';
import 'dart:io';

void main(List<String> arguments) {
  var p1 = Pessoa();
  var lista = ['nome', 'peso', 'altura'];
  var listaValores = [];

  print("#" * 36);
  print("Seja bem vindo à calculadora de IMC!");
  print("#" * 36);

  for (var i = 0; i < lista.length; i++) {
    print("Digite seu(sua) ${lista[i]}: ");
    String line = stdin.readLineSync(encoding: utf8) ?? '';
    listaValores.add(line);
  }
  try {
    listaValores[1] = double.parse(listaValores[1] ?? '');
    listaValores[2] = double.parse(listaValores[2] ?? '');
  } catch (e) {
    print("Numero inválido, tente novamente: $e");
    exit(0);
  }
  print("Seu IMC está sendo calculado ....");
  sleep(Duration(seconds: 3));

  p1.setNome(listaValores[0]);
  double imc = p1.CalculaIMC(listaValores[1], listaValores[2]);

  stdout.write("Seu IMC é igual a $imc ==> ");

  switch (imc) {
    case < 16:
      print("Magreza grave");
      break;
    case >= 16 && < 17:
      print("Magreza moderada");
      break;
    case >= 17 && < 18.5:
      print("Magreza leve");
      break;
    case >= 18.5 && < 25:
      print("Saudável");
      break;
    case >= 25 && < 30:
      print("Sobrepeso");
      break;
    case >= 30 && < 35:
      print("Obesidade Grau I");
      break;
    case >= 35 && < 40:
      print("Obesidade Grau II (severa)");
      break;
    case >= 40:
      print("Obesidade Grau III (mórbida)");
      break;
    default:
      print("Resultado Inválido, por favor tente novamente!");
  }
  print(p1);
}
