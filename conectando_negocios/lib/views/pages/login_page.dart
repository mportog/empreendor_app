import 'package:conectando_negocios/views/widgets/backgound.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Background(MediaQuery.of(context).size.height * 0.45,
                MediaQuery.of(context).size.width),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: TextField(
                decoration: InputDecoration(labelText: 'Email ou CPF/CNPJ'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: TextField(
                decoration: InputDecoration(labelText: 'Senha'),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Esqueci minha senha',
                          style: TextStyle(color: Colors.grey),
                        )),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      onPressed: () {},
                      child:
                          Text('ENTRAR', style: TextStyle(color: Colors.white)),
                      color: Colors.indigoAccent,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      textColor: Colors.grey,
                      onPressed: () {},
                      child: Text('CADASTRAR'),
                      color: Colors.white,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
