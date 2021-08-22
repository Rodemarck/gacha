import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rode/app/controller/HomePageController.dart';
import 'package:rode/app/core/Constantes.dart';

import 'FragmentoGrana_HomePage.dart';

class FragmentoSuperior_HomePage extends StatelessWidget {
  static final HomePageController homeControler = new HomePageController();
  FragmentoSuperior_HomePage();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.blueGrey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: GestureDetector(
                  onTap: homeControler.mudaPic,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(Const().logado().pic),
                      ),
                    ),
                  ),
                ),
              ),
              FragmentoGrana_HomePage(
                src:'assets/images/faca.png',
                valor: Const().logado().getFacas(),
                func: homeControler.addFaca,
              ),
              FragmentoGrana_HomePage(
                src:'assets/images/plug.png',
                valor: Const().logado().getTomadas(),
                func: homeControler.addTomada,
              ),
              Container(
                child: GestureDetector(
                  onTap: homeControler.abreEmail,
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/images/carta.png'),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}