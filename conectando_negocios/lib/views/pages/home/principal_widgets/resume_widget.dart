import 'package:flutter/material.dart';

class ResumeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 80,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Investimento\narrecadado',
                      textAlign: TextAlign.center,
                    ),
                    Divider(
                      color: Theme.of(context).primaryColor,
                      height: 10,
                      thickness: 5,
                    ),
                    Text('R\$30.000,00')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Investimento\nnecessário',
                      textAlign: TextAlign.center,
                    ),
                    Divider(
                      color: Theme.of(context).primaryColor,
                      height: 10,
                      thickness: 5,
                    ),
                    Text('R\$120.000,00')
                  ],
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width / 8,
                  color: Colors.green,
                ),
                Container(
                  width: 3 * (MediaQuery.of(context).size.width / 8),
                  height: 20,
                  color: Colors.red,
                )
              ],
            ),
            Text(
              'Você completou 25%\ndo seu objetivo',
              textAlign: TextAlign.center,
            ),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 10,
              thickness: 1,
              indent: 100,
              endIndent: 100,
            ),
            Text(
              'Investimento arrecado\npor prfil',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
