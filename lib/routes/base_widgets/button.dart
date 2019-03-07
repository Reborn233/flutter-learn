import 'package:flutter/material.dart';
import '../../widgets/index.dart';
import '../../widgets/dialog.dart';

class ButtonWidgets extends StatefulWidget {
  ButtonWidgets({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ButtonWidgetsState createState() => _ButtonWidgetsState();
}

class _ButtonWidgetsState extends State<ButtonWidgets> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      children: <Widget>[
        H1('按钮', 32),
        H1('RaisedButton'),
        Text('RaisedButton 即"漂浮"按钮，它默认带有阴影和灰色背景。按下后，阴影会变大，如：'),
        RaisedButton(
          child: Text("RaisedButton"),
          onPressed: () => {
                showMessage(
                  context: context,
                  builder: (BuildContext context) => MessageDialog(
                        message: 'RaisedButton',
                      ),
                )
              },
        ),
        H1('FlatButton'),
        Text('FlatButton即扁平按钮，默认背景透明并不带阴影。按下后，会有背景色：'),
        FlatButton(
          child: Text("FlatButton"),
          onPressed: () => {
                showMessage(
                  context: context,
                  builder: (BuildContext context) => MessageDialog(
                        message: 'FlatButton',
                      ),
                )
              },
        ),
        H1('OutlineButton'),
        Text('OutlineButton默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱)：'),
        OutlineButton(
          child: Text("OutlineButton"),
          onPressed: () => {
                showMessage(
                  context: context,
                  builder: (BuildContext context) => MessageDialog(
                        message: 'OutlineButton',
                      ),
                )
              },
        ),
        H1('IconButton'),
        Text('IconButton是一个可点击的Icon，不包括文字，默认没有背景，点击后会出现背景：'),
        IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () => {
                showMessage(
                  context: context,
                  builder: (BuildContext context) => MessageDialog(
                        message: 'IconButton',
                      ),
                )
              },
        ),
        H1('自定义按钮外观'),
        Text('按钮外观可以通过其属性来定义，不同按钮属性大同小异，我们以FlatButton为例'),
        RaisedButton(
          color: Colors.blue,
          highlightColor: Colors.blue[700],
          colorBrightness: Brightness.dark,
          splashColor: Colors.grey,
          child: Text("自定义按钮"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          onPressed: () => {
                showMessage(
                  context: context,
                  builder: (BuildContext context) => MessageDialog(
                        message: '自定义按钮',
                      ),
                )
              },
        ),
      ],
    );
  }
}
