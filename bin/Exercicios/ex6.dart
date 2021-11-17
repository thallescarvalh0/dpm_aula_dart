import 'dart:io';

List<Map<String, dynamic>> cadastros = [];
main() {

  bool condicao = true;

  while(condicao){

    print("Digite um comando (cadastrar/fim)");
    String comando = stdin.readLineSync().toString();

    if (comando == "cadastrar"){
      cadastrar();
    }
    else if (comando == "fim"){
      imprimir();
    }
  }
}
cadastrar(){
  Map<String, dynamic> cadastro = {};

  print("\nDigite seu nome");
  cadastro["nome"] = stdin.readLineSync().toString();
  print("Digite seu aniversário");
  cadastro["aniversario"] = stdin.readLineSync().toString();
  cadastros.add(cadastro);
}
imprimir(){
  print(cadastros);
}