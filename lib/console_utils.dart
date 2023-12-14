import 'dart:convert';
import 'dart:io';

class ConsoleUtils {

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble(){
    var value = lerString();

    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double lerDoubleComTexto(texto){
    print(texto);
     do {
      
        var value = lerDouble();
        if(value != null){
          return value;
        }
        else{
          print(texto);
        }
        
    } while (true);
  }

  
}