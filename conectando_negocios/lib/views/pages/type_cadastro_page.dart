import 'package:flutter/material.dart';

class TypeCadastroPage extends StatefulWidget {
  @override
  _TypeCadastroPageState createState() => _TypeCadastroPageState();
}

class _TypeCadastroPageState extends State<TypeCadastroPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 5,
        title: Text('Cadastro'),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Qual seu objetivo?',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        MaterialButton(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          onPressed: () {
                            print('Clicado em investimentos');
                          },
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      width: width / 4,
                                      height: width / 4,
                                      child: Image(
                                        image: Image.asset(
                                                'asset/images/investees.png')
                                            .image,
                                        fit: BoxFit.cover,
                                      )),
                                  SizedBox(height: 10),
                                  Text('Arrecadar investimento'),
                                  SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        MaterialButton(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          onPressed: () {
                            print('Clicado em investidores');
                          },
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      width: width / 4,
                                      height: width / 4,
                                      child: Image(
                                        image: Image.asset(
                                                'asset/images/investors.png')
                                            .image,
                                        fit: BoxFit.cover,
                                      )),
                                  SizedBox(height: 10),
                                  Text('Realizar investimentos'),
                                  SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
