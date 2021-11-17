//@dart=2.9
import 'dart:io';

main(){

  print("Digite um número========");
  var input = stdin.readLineSync();
  var idade = int.parse(input.toString());


  if (testarPrimo(idade) == 0){
    print("Número não é primo");
  }
  else{
    print("Número primo");
  }

}

int testarPrimo(int numero){
  if (numero <= 1 ) return 0;
  for(var i=2; i < numero; i++){
    if (numero%i == 0) {
      return 0;
    }
    return 1;
  }
}