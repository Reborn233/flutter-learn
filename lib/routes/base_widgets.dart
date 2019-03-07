import 'package:flutter/material.dart';
import '../widgets/page_scaffold.dart';
import './base_widgets/index.dart';

class BaseWidgets extends StatefulWidget {
  BaseWidgets({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BaseWidgetsState createState() => _BaseWidgetsState();
}

class _BaseWidgetsState extends State<BaseWidgets> {
  @override
  Widget build(BuildContext context) {
    return ListPage([
      PageInfo('文本', (ctx) => TextWidgets()),
      PageInfo('按钮', (ctx) => ButtonWidgets()),
      PageInfo('图片和Icon', (ctx) => ImageWidgets()),
      PageInfo('单选框和复选框', (ctx) => SwitchWidgets()),
      PageInfo('输入框和表单', (ctx) => FormWidgets()),
      PageInfo('http请求', (ctx) => HttpWidgets())
    ]);
  }
}
