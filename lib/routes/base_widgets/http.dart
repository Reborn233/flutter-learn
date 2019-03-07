import 'package:flutter/material.dart';
import '../../widgets/index.dart';
import '../../apis/index.dart';

class HttpWidgets extends StatefulWidget {
  @override
  _HttpWidgetsState createState() => _HttpWidgetsState();
}

class _HttpWidgetsState extends State<HttpWidgets> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      children: <Widget>[
        RaisedButton(
          child: Text("http"),
          onPressed: () => {print(123)},
        ),
      ],
    );
  }
}
