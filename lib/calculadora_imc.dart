void retornaClassificacao(double imc) {
  if (imc < 16) {
    print("Classificação: Baixo peso muito grave  IMC: $imc");
  } else if (imc >= 16 && imc < 16.9) {
    print("Classificação: Baixo peso grave  IMC: $imc");
  } else if (imc >= 17 && imc < 18.4) {
    print("Classificação: Baixo peso  IMC: $imc");
  } else if (imc >= 18.5 && imc < 24.9) {
    print("Classificação: Peso normal  IMC: $imc");
  } else if (imc >= 25 && imc < 29.9) {
    print("Classificação: Sobrepeso  IMC: $imc");
  } else if (imc >= 30 && imc < 34.9) {
    print("Classificação: Obesidade grau I  IMC: $imc");
  } else if (imc >= 35 && imc < 39.9) {
    print("Classificação: Obesidade grau II (severa)  IMC: $imc");
  } else {
    print("Classificação: Obesidade grau III (mórbida)  IMC: $imc");
  }
}


