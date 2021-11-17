import 'dart:io';

main(){

  print("Digite um número========");
  var input = stdin.readLineSync();
  var idade = int.parse(input.toString());
  var result = idade % 2;


  if (result == 0){
    print("Número par");
  }
  else{
    print("Número ímpar");
  }

}