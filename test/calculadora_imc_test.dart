import 'package:calculadora_imc/Classes/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('calcularIMC', () {
      double peso = 70.1;
      double altura = 175;
      Pessoa pessoa = Pessoa('nome', peso, altura);
      double imc = pessoa.calcularIMC();
      expect(imc, equals(22.9)); 
    });

    test('calcularIMC', () {
      double peso = 82;
      double altura = 175;
      Pessoa pessoa = Pessoa('nome', peso, altura);
      double imc = pessoa.calcularIMC();
      expect(imc, greaterThan(26)); 
    });

     test('calcularIMC', () {
      double peso = 0;
      double altura = 175;
      Pessoa pessoa = Pessoa('nome', peso, altura);
      expect(() => pessoa.calcularIMC(),  throwsA(TypeMatcher<ArgumentError>())); 
    });

     test('calcularIMC', () {
      double peso = 700;
      double altura = 0;
      Pessoa pessoa = Pessoa('nome', peso, altura);
      expect(() => pessoa.calcularIMC(),  throwsA(TypeMatcher<ArgumentError>())); 
    });
    
  });
}
