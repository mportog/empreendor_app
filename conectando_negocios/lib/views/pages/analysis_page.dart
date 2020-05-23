import 'package:flutter/material.dart';

class AnalysisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: height / 6,
                  child: Column(children: <Widget>[
                    Text(
                      'Conectando',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Negocios',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                  ]),
                ),
                Container(
                    height: height / 2,
                    child: Column(children: <Widget>[
                      Text(
                        'Estamos analisando as informações em até 2 dias nós responderemos',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 100,
                      ),
                    ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
