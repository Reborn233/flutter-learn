import 'package:flutter/material.dart';
import '../../widgets/index.dart';

class SwitchWidgets extends StatefulWidget {
  @override
  _SwitchWidgetsState createState() => _SwitchWidgetsState();
}

class Drink {
  Drink(this.name, this.id, [this.check = true]);

  bool check;
  final String name;
  final int id;
}

class _SwitchWidgetsState extends State<SwitchWidgets> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Layout(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            H1('单选框值: ' + _switchSelected.toString()),
            Switch(
              value: _switchSelected, //当前状态
              onChanged: (value) {
                //重新构建页面
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            H1('复选框值: ' + _checkboxSelected.toString()),
            Row(children: <Widget>[
              Row(
                children: <Widget>[
                  Checkbox(
                      value: _checkboxSelected,
                      onChanged: (value) {
                        setState(() {
                          _checkboxSelected = value;
                        });
                      }),
                  H1('牛奶')
                ],
              )
            ])
          ],
        )
      ],
    );
  }
}
