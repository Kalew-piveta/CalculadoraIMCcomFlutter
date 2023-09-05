import 'dart:math';

class Pessoa {
  String _nome = '';
  double _peso = 0.0;
  double _altura = 0.0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  double CalculaIMC(double peso, double altura) {
    setPeso(peso);
    setAltura(altura);
    if (peso <= 0) {
      throw ArgumentError(
          "O valor do peso não pode ser menor ou igual a zero.");
    }
    if (altura <= 0) {
      throw ArgumentError(
          "O valor da altura não pode ser menor ou igual a zero.");
    }
    double imc = peso / pow(altura, 2);
    return imc.floorToDouble();
  }

  // double? calculaTeste(double peso, double altura) {
  //   setPeso(peso);
  //   setAltura(altura);
  //   double testeimc = peso / pow(altura, 2);
  //   return testeimc;
  // }

  @override
  String toString() {
    return {'Nome': _nome, 'Peso': _peso, 'Altura': _altura}.toString();
  }
}
