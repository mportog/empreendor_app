import 'package:conectando_negocios/views/pages/analysis_page.dart';
import 'package:conectando_negocios/views/widgets/backgound.dart';
import 'package:flutter/material.dart';

class ConnectPlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Background(size.height * 0.45, size.width),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Plano', style: TextStyle(fontSize: 32)),
                Text(' Conecte+',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Theme.of(context).primaryColor)),
              ],
            ),
            SizedBox(height: 15),
            Divider(
              color: Theme.of(context).primaryColor,
              thickness: 1,
              endIndent: size.width / 2.5,
              indent: size.width / 2.5,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        height: size.height / 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('•   Deixe seu negócio com maior visibilidade',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey[700])),
                            Text(
                                '•   Tenha apoio de especialistas para alavancar suas ideias',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey[700])),
                            Text('•   Receba mais rápido',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey[700])),
                          ],
                        )),
                    SizedBox(height: 15),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AnalysisPage()));
                      },
                      child: Text('ASSINAR',
                          style: TextStyle(color: Colors.white)),
                      color: Colors.indigoAccent,
                    ),
                    FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Continuar com plano gratuito',
                          style: TextStyle(color: Colors.grey),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
