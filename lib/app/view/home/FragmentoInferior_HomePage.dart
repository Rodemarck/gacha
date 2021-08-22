import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FragmentoInferior_HomePage extends StatelessWidget {
  const FragmentoInferior_HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height-80),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}