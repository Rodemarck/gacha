import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rode/app/view/home/FragmentoSuperior_HomePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/RayXRei.png',
              fit: BoxFit.cover,
            ),
          ),
          FragmentoSuperior_HomePage(),
          Container(),
          Container(
            child: Column(
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height-50),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blueGrey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
