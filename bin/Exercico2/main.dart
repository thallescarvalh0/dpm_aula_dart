import 'dart:ffi';
import 'dart:io';
import 'dart:math';

main() {
  int opcao = 0;
  double areaTotal = 0;
  List<Figura> list = [];

  print("========Cadastrar figuras (1-Circulo, 2-Retangulo, 3-Triangulo, 4- Imprimir, 5-Sair========");
  while (opcao !=5){
    var input = stdin.readLineSync();
    opcao = int.parse(input.toString());

    switch (opcao){
      case 1:
        print("Digite o raio:");
        var input = stdin.readLineSync();
        var raio = double.parse(input.toString());
        var circ = Circulo(1, 2, raio);
        print("Criado Circulo em x= ${circ.x} y= ${circ.y}");
        print("Area= ${circ.area()} ");
        circ.diametro();
        list.add(circ);

        break;
      case 2:
        print("Digite a largura:");
        var larg = stdin.readLineSync();
        var largura = double.parse(larg.toString());
        print("Digite o comprimento:");
        var comp = stdin.readLineSync();
        var comprimento = double.parse(comp.toString());
        var ret = Retangulo(1, 2, largura,comprimento);
        print("Criado Retangulo em x= ${ret.x} y= ${ret.y}");
        print("Area= ${ret.area()} ");
        ret.lsQuadrado();
        list.add(ret);

        break;
      case 3:
        print("Digite a face1:");
        var f1 = stdin.readLineSync();
        var face1 = double.parse(f1.toString());
        print("Digite a face2:");
        var f2 = stdin.readLineSync();
        var face2 = double.parse(f2.toString());
        print("Digite a face3:");
        var f3 = stdin.readLineSync();
        var face3 = double.parse(f3.toString());
        var trian = Triangulo(1, 2, face1,face2,face3);
        print("Criado Triangulo em x= ${trian.x} y= ${trian.y}");
        print("Area= ${trian.area()} ");
        trian.getTipo();
        list.add(trian);
        break;
      case 4:
        var total = 0.0;
        for (var value in list) {
          total = total + value.area();
        }
        print("Area total dos objetos: $total");
        break;

    }
  }

}

abstract class Figura{
  int? x;
  int? y;

  Figura(this.x, this.y);

  double area();
}

class Retangulo extends Figura{

  double? largura;
  double? comprimento;

  Retangulo(int x, int y,
      this.largura, this.comprimento) : super(x, y);

  @override
  double area() {
    if ((largura != null) && (comprimento != null)){
      var valor = (largura! * comprimento!);
      return valor;
    }else{
      return 0;
    }
  }

  void lsQuadrado(){
    if (largura == comprimento){
      print("Quadrado");
    }
    else{
      print("Nao e quadrado");
    }
  }
}

class Circulo extends Figura {

  double? raio;

  Circulo(int? x, int? y, this.raio) : super(x, y);

  @override
  double area() {
    if (raio! > 0){
      return(3.14 * (raio!*raio!));
    }else{
      return 0;
    }
  }

  void diametro(){
    if (raio! > 0){
      var diam = raio! * 2;
      print("Diametro: x= $diam");
    }
  }

}

class Triangulo extends Figura {

  double? face1;
  double? face2;
  double? face3;

  Triangulo(int? x, int? y, this.face1, this.face2, this.face3) : super(x, y);

  @override
  double area() {
    if ((face1! > 0) && (face2! > 0) && (face3! > 0)){
    var p = 0.0;
    p = ((face1! + face2! + face3!) / 2);
    var area = sqrt(
        (p*(p-face1!)*(p-face2!)*(p-face3!)));

      return area;
    }
    else{
      return 0;
    }
  }

  void getTipo(){
    if ((face1! == face2! ) && (face1! == face3!)){
      print("Triangulo Equilatero");
    }
    else if((face1! != face2! ) && (face1! != face3!)){
      print("Triangulo Escaleno");
    }
    else{
      print("Triangulo Isoceles");
    }
  }

}



