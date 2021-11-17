//@dart=2.9
import 'dart:io';

main(){

  List<String> numeros = [];
  List<String> numeros2 = [];

  print("\n Digite a quantidade de números para digitar nas DUAS LISTAS :");
  var text = stdin.readLineSync();
  var quantidade = int.parse(text.toString());

  if (quantidade > 0){
    for(var i=1; i<=quantidade; i++){
      print("\n $i Número Lista1: ");
      var textNum = stdin.readLineSync();
      if (textNum != ""){
        numeros.add(textNum.toString());
      }
    }

    for(var i=1; i<=quantidade; i++){
      print("\n $i Número Lista2: ");
      var textNum = stdin.readLineSync();
      if (textNum != ""){
        numeros2.add(textNum.toString());
      }
    }
    verificaListas(numeros,numeros2);
  }
}
verificaListas(List<String> list1,List<String> list2 ){

  print("Números iguais: ");
  for (var value in list1) {
    var valueList1 = int.parse(value);

    for (var value in list2) {
      var valueList2 = int.parse(value);

      if (valueList1 == valueList2){
        print(valueList1);
      }
    }
  }

}