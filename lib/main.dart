import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/view/home/HomePage.dart';
import 'app/view/sessao/LoginPage.dart';
import 'app/view/sessao/RegisterPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/login' : (context)=>LoginPage(),
        '/register': (context)=>RegisterPage(),
        '/': (context)=>HomePage()
      },
    );
  }
}
