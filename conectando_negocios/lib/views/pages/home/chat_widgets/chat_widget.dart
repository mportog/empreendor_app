import 'package:flutter/material.dart';

class ChatWidgetPage extends StatefulWidget {
  @override
  _ChatWidgetPageState createState() => _ChatWidgetPageState();
}

class _ChatWidgetPageState extends State<ChatWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat'),
          centerTitle: true,
        ),
        body: ListView());
  }
}
