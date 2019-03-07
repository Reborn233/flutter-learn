import 'package:flutter/material.dart';
import '../../widgets/index.dart';

class TextWidgets extends StatefulWidget {
  TextWidgets({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TextWidgetsState createState() => _TextWidgetsState();
}

class _TextWidgetsState extends State<TextWidgets> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      children: <Widget>[
        H1('文本样式', 32),
        H1('Text'),
        Text(
          "Hello world",
          // textAlign: TextAlign.center,
        ),
        Text(
          "Hello world! I'm Jack. " * 4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        H1('TextStyle'),
        Text(
          "Hello world",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Courier",
              background: new Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed),
        ),
        H1('TextSpan'),
        Text.rich(TextSpan(children: [
          TextSpan(text: "Home: "),
          TextSpan(
              text: "https://flutterchina.club",
              style: TextStyle(color: Colors.blue)),
        ])),
        H1('DefaultTextStyle'),
        DefaultTextStyle(
          //1.设置文本默认样式
          style: TextStyle(
            color: Colors.red,
            fontSize: 20.0,
          ),
          textAlign: TextAlign.start,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("hello world"),
              Text("I am Jack"),
              Text(
                "I am Jack",
                style: TextStyle(
                    inherit: false, //2.不继承默认样式
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
