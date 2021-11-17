import 'dart:io';

main() {
  List<String> numeros = [];

  print("\n Digite a quantidade de números para digitar :");
  var text = stdin.readLineSync();
  var quantidade = int.parse(text.toString());

  if (quantidade > 0){
    for(var i=1; i<=quantidade; i++){
      print("\n $i Número: ");
      var textNum = stdin.readLineSync();
      if (textNum != ""){
        numeros.add(textNum.toString());
      }
    }
    for (var value in numeros) {
      var result = int.parse(value);
      if (result < 5){
        print("\n $value ");
      }
    }

  }
}