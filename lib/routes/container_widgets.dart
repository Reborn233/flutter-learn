import 'package:flutter/material.dart';

class ContainerWidgets extends StatefulWidget {
  ContainerWidgets({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ContainerWidgetsState createState() => _ContainerWidgetsState();
}

class _ContainerWidgetsState extends State<ContainerWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            "容器",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
