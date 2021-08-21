import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SessionBackground.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String txt_login = '';
  String txt_pass = '';
  String txt_email = '';
  void setLogin (txt)  =>txt_login = txt;
  void setEmail (txt) =>txt_email = txt;
  void setPass (txt) =>txt_pass = txt;
  void register(){
    print('registrando com {login[$txt_login],pass=[$txt_pass],email=[$txt_email]}');
  }
  void backLogin (context) => Navigator.of(context).pushReplacementNamed('/login');
  @override
  Widget build(BuildContext context) {
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
                      onChanged: setEmail,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        hintText: 'Email',
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
                  onPressed: ()=>backLogin(context),
                  child: Container(
                    child: Text('voltar'),
                  ),
                ),
                RaisedButton(
                  onPressed: register,
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
