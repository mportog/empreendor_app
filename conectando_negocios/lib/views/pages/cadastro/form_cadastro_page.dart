import 'package:flutter/material.dart';

class FormCadastroPage extends StatefulWidget {
  @override
  _FormCadastroPageState createState() => _FormCadastroPageState();
}

class _FormCadastroPageState extends State<FormCadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          elevation: 5,
          title: Text('Cadastro: Pessoal'),
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
                      labelText: 'CPF ou CNPJ:',
                      prefix: Icon(Icons.assignment_ind)),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Nome completo:', prefix: Icon(Icons.person)),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Celular:', prefix: Icon(Icons.phone_android)),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Data de nascimento:',
                      prefix: Icon(Icons.event)),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'E-mail:', prefix: Icon(Icons.mail)),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Confirmar e-mail:',
                      prefix: Icon(Icons.contact_mail)),
                ),
                SizedBox(height: 35),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ]),
        )));
  }
}
