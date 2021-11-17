import 'dart:io';

main(){

  print("Digite seu nome========");
  var inputNome = stdin.readLineSync();//dart io para pegar dados do usuário
  var nome = stdin.readLineSync().toString();

  print("Digite idade valida========");
  var input = stdin.readLineSync();//dart io para pegar dados do usuário
  var idade = int.parse(input.toString());

  var result = 100 - idade;


  if (result >= 0){
    print("Faltam $result para completar 100 anos ========");
  }

}