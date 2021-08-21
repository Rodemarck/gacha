import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FragmentoGrana_HomePage extends StatelessWidget {
  String val = '';
  final String src;

  FragmentoGrana_HomePage({Key? key, required this.src, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          SizedBox(width: 5,),
          Container(
            child: Image.asset(src),
          ),
          Container(
            width: 60,
            child: Center(
              child: Text('450',
                style: TextStyle(
                  color: Colors.black
                )
              ),
            )
          ),
          GestureDetector(
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
