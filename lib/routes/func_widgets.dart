import 'package:flutter/material.dart';

class FuncWidgets extends StatefulWidget {
  FuncWidgets({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FuncWidgetsState createState() => _FuncWidgetsState();
}

class _FuncWidgetsState extends State<FuncWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            "功能",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
