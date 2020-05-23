import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 5,
        title: Text('Cadastro: Endereço'),
      ),
      body: Container(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 20),
              TextField(
                enabled: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'CEP:', prefix: Icon(Icons.location_on)),
              ),
              SizedBox(height: 20),
              TextField(
                enabled: false,
                decoration: InputDecoration(labelText: 'Endereço:'),
              ),
              SizedBox(height: 20),
              TextField(
                enabled: false,
                decoration: InputDecoration(labelText: 'Cidade:'),
              ),
              SizedBox(height: 20),
              TextField(
                enabled: false,
                decoration: InputDecoration(labelText: 'Estado:'),
              ),
              TextField(
                enabled: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Número:', prefix: Icon(Icons.location_city)),
              ),
              SizedBox(height: 20),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Digitar endereço completo',
                          style: TextStyle(color: Colors.grey),
                        )),
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
      )),
    );
  }
}
