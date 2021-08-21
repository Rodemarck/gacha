import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FragmentoGrana_HomePage.dart';

class FragmentoSuperior_HomePage extends StatefulWidget {
  const FragmentoSuperior_HomePage({Key? key}) : super(key: key);

  @override
  _FragmentoSuperior_HomePageState createState() =>
      _FragmentoSuperior_HomePageState();
}

class _FragmentoSuperior_HomePageState extends State<FragmentoSuperior_HomePage> {
  
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
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset('assets/images/pic.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: FragmentoGrana_HomePage(src:'assets/images/faca.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15,right: 20),
                child: FragmentoGrana_HomePage(src:'assets/images/plug.png'),
              ),
              Container(
                width: 50,
                height: 50,
                child: Image.asset('assets/images/carta.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}
