import 'package:flutter/cupertino.dart';

class BackGround extends StatelessWidget {
  BackGround({ Key? key, required this.url}) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(url,
        fit: BoxFit.cover,
      ),
    );
  }
}