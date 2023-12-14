import 'package:calculadora_imc/Classes/Pessoa.dart';
import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/console_utils.dart' ;

void main(List<String> arguments) {
  print("Bem vindo a calculadora de IMC");
 while (true) {
    double peso = ConsoleUtils.lerDoubleComTexto("Digite o seu peso (kg): ");
    double altura = ConsoleUtils.lerDoubleComTexto("Digite a sua altura (cm): ");

    Pessoa p1 = Pessoa('nome', peso, altura);

    try {
      double imc = p1.calcularIMC();
      retornaClassificacao(imc);
    } catch (e) {
      print("Erro ao calcular o IMC: $e");
    }

    String continuar = ConsoleUtils.lerStringComTexto("Deseja calcular outro IMC? (S para sim, qualquer outra tecla para sair): ");
    if (continuar.toUpperCase() != "S") {
      break;
    }
  }
}

