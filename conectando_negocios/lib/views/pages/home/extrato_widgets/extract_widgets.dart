import 'package:flutter/material.dart';

class TransactionExtractPage extends StatefulWidget {
  @override
  _TransactionExtractPageState createState() => _TransactionExtractPageState();
}

class _TransactionExtractPageState extends State<TransactionExtractPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: 'TODAS',
                ),
                Tab(
                  text: 'ENTRADAS',
                ),
                Tab(
                  text: 'SAÍDAS',
                ),
              ],
            ),
            title: Text('Extrato de Transações'),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('04/05'),
                            SizedBox(width: 5),
                            Text('|'),
                            SizedBox(width: 5),
                            Text('Investidor'),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Roberto Silva'),
                            Text('+ R\$ 13.000,00'),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          height: 10,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('04/05'),
                            SizedBox(width: 5),
                            Text('|'),
                            SizedBox(width: 5),
                            Text('Investidor'),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Roberto Silva'),
                            Text('+ R\$ 13.000,00'),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          height: 10,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('04/05'),
                            SizedBox(width: 5),
                            Text('|'),
                            SizedBox(width: 5),
                            Text('Investidor'),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Roberto Silva'),
                            Text('+ R\$ 13.000,00'),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          height: 10,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('04/05'),
                            SizedBox(width: 5),
                            Text('|'),
                            SizedBox(width: 5),
                            Text('Investidor'),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Roberto Silva'),
                            Text('+ R\$ 13.000,00'),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          height: 10,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('04/05'),
                            SizedBox(width: 5),
                            Text('|'),
                            SizedBox(width: 5),
                            Text('Investidor'),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Roberto Silva'),
                            Text('+ R\$ 13.000,00'),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          height: 10,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('04/05'),
                            SizedBox(width: 5),
                            Text('|'),
                            SizedBox(width: 5),
                            Text('Investidor'),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Roberto Silva'),
                            Text('+ R\$ 13.000,00'),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          height: 10,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
