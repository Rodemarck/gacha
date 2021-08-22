import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rode/app/view/BackGround.dart';
import 'package:rode/app/view/home/FragmentoFlutuanteInferior_HomePage.dart';
import 'package:rode/app/view/home/FragmentoFlutuanteSuperior_HomePage.dart';
import 'package:rode/app/view/home/FragmentoInferior_HomePage.dart';
import 'package:rode/app/view/home/FragmentoSuperior_HomePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(url: 'assets/images/RayXRei.png'),
          FragmentoSuperior_HomePage(),
          FragmentoFlutuanteSuperior_HomePage(),
          FragmentoFlutuanteInferior_HomePage(),
          FragmentoInferior_HomePage(),
        ],
      ),
    );
  }
}