import 'package:conectando_negocios/views/pages/home/principal_widgets/investors_widget.dart';
import 'package:conectando_negocios/views/pages/home/principal_widgets/resume_widget.dart';
import 'package:flutter/material.dart';

class PrincipalPageWidget extends StatefulWidget {
  @override
  _PrincipalPageWidgetState createState() => _PrincipalPageWidgetState();
}

class _PrincipalPageWidgetState extends State<PrincipalPageWidget>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 80,
            decoration:
                new BoxDecoration(color: Theme.of(context).primaryColor),
            child: new TabBar(
              controller: _controller,
              tabs: [
                new Tab(
                  icon: Text('Resumo', style: TextStyle(fontSize: 18)),
                ),
                new Tab(
                  icon: Text('Investidores', style: TextStyle(fontSize: 18)),
                ),
                new Tab(
                  icon: Text('Vaquinha', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
          new Container(
            height: MediaQuery.of(context).size.height - 80,
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                ResumeWidget(),
                InvestorsWidget(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
