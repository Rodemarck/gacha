import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FragmentoGrana_HomePage extends StatelessWidget {
  String val = '';
  final String src;
  final String valor;
  final Function func;
  

  FragmentoGrana_HomePage({Key? key, required this.src, required this.valor, required this.func}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Image.asset(src),
          ),  
          Text(valor,
            style: TextStyle(
              color: Colors.black
            )
          ),
          GestureDetector(
            onTap: ()=>func(),
            child: Icon(
              Icons.add_circle_outline,
              color: Colors.lightBlueAccent,
            ),
          )
        ],
      ),
    );
  }
}
