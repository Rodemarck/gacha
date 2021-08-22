import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rode/app/controller/HomePageController.dart';

class FragmentoFlutuanteSuperior_HomePage extends StatelessWidget {
  FragmentoFlutuanteSuperior_HomePage({ Key? key }) : super(key: key);
  final HomePageController homePageController = new HomePageController();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      /*child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                )
              ],
            ),
          )
        ],
      ),*/
    );
  }
}