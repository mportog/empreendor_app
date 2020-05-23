import 'package:conectando_negocios/views/widgets/multiline_text_field.dart';
import 'package:flutter/material.dart';

class BusinessPage extends StatefulWidget {
  @override
  _BusinessPageState createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          elevation: 5,
          title: Text('Cadastro: Negócio'),
        ),
        body: Container(
            child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 40),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Nome do negócio / ideia / projeto:',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Qual segmento ele pertence:',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Qual estágio do projeto:',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Quanto pretende arrecadar?:',
                        ),
                      ),
                      SizedBox(height: 20),
                      MulilineTextField(
                          controller, 'Mais informações', Icons.info),
                      SizedBox(height: 40),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              onPressed: () {},
                              child: Text('CONTINUAR',
                                  style: TextStyle(color: Colors.white)),
                              color: Colors.indigoAccent,
                            ),
                          ]),
                    ]))));
  }
}
