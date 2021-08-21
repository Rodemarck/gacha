import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rode/app/view/sessao/SessionBackground.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String txt_login = '';
  String txt_pass = '';
  void setLogin (txt)  =>txt_login = txt;
  void setPass (txt) =>txt_pass = txt;
    void login(BuildContext context){
      if(txt_login =='rode' && txt_pass =='123')// todo por um sistema de bd
        Navigator.of(context).pushReplacementNamed('/');
    }
    void register(BuildContext context){
      print('partir para o cadastro');
      Navigator.of(context).pushNamed('/register');
    }
    @override
    Widget build(BuildContext context) {
      print('aaa');
      return SessionBackground(
        child: Column(
          children: [
            Container(height: 250,),
            Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15,5,15,5),
                child: Column(
                  children: [
                    TextField(
                      onChanged: setLogin,
                      decoration: InputDecoration(
                          labelText: 'Login:',
                          border: OutlineInputBorder()
                      ),
                    ),
                    Container(height: 15,),
                    TextField(
                      obscureText: true,
                      onChanged: setPass,
                      //onEditingComplete: ()=>FocusScope.of(context).nextFocus(),
                      decoration: InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder()
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: ()=>login(context),
                  child: Container(
                    width: 100,
                    child: Center(
                        child: Text('Logar')
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: ()=>register(context),
                  child: Container(
                      width: 150,
                      child: Center(
                          child: Text('Cadastrar')
                      )
                  ),
                ),
              ],
            )
          ],
        )
      );
    }
  }

/*
* body: Center(
       child: Container(
         width: MediaQuery.of(context).size.width,
         child: Padding(
           padding: const EdgeInsets.all(8),
           child: SingleChildScrollView(
             child: Column(
                ,
               children: [
                 TextField(
                   onChanged: setLogin,
                   decoration: InputDecoration(
                     labelText: 'login',
                     border: OutlineInputBorder()
                   ),
                 ),
                 Container(height: 10,),
                 TextField(
                   obscureText: true,
                   onChanged: setSenha,
                   decoration: InputDecoration(
                       labelText: 'senha',
                       border: OutlineInputBorder()
                   ),
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     ElevatedButton(
                       onPressed: logar,
                       child: Text('logar'),
                     ),
                     ElevatedButton(
                       onPressed: logar,
                       child: Text('cadastrar'),
                     )
                   ],
                 )
               ],
             ),
           ),
         )
       ),
      ),
      */
