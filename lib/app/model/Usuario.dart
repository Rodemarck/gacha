import 'dart:math';

class Usuario{
  final String nome;
  int facas = 275;
  int tomadas = 275;
  String pic = 'assets/images/pic.png';

  Usuario(this.nome, this.pic, this.facas, this.tomadas);
  List<String> unidades = ['','K','M','B','T','q','Q'];
  String arrumaNumero(int numero){
    int n = numero ;
    int k = 0;
    while(n > 10){
      n = (n /10).ceil();
      ++k;
    }
    if(k == 0) k =1;
    var pot = (k/3).floor();
    return (numero/ pow(10, k-1)).floor().toString() + unidades[(k/3).floor()];
  }

  String getFacas(){
    return arrumaNumero(facas);
  }
  String getTomadas(){
    return arrumaNumero(tomadas);
  }
}