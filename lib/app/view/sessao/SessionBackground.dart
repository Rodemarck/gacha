import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SessionBackground extends StatelessWidget {
  final Widget child;
  const SessionBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.network('https://cdn.discordapp.com/attachments/305767530021126154/877218511288684564/egirl_zack.png',
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
