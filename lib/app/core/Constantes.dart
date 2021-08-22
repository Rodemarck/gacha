import 'package:flutter/cupertino.dart';
import 'package:rode/app/model/Usuario.dart';

class Const{
  static final Const _singleton = Const._internal();
  factory Const() {
    return _singleton;
  }
  Const._internal();
  double width = 0;
  double height = 0;

  void setSize(context)  {
    Const().width = MediaQuery.of(context).size.width;
    Const().height = MediaQuery.of(context).size.height ;
  }


  Usuario logado(){
    return Usuario('rode','assets/images/pic.png',16235,2);
  }

}