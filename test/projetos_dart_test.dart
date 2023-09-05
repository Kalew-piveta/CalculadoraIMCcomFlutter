import 'package:projetos_dart/Classe_Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('calculaimc', () {
    expect(Pessoa().CalculaIMC(76, 1.68), equals(26.0));
  });
  test('excecão1', () {
    expect(() => Pessoa().CalculaIMC(0, 100),
        throwsA(TypeMatcher<ArgumentError>()));
  });
  test('excecão2', () {
    expect(() => Pessoa().CalculaIMC(100, 0),
        throwsA(TypeMatcher<ArgumentError>()));
  });
}
