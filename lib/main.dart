import 'package:flutter/material.dart';
import './routes/index.dart';
import './widgets/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 这个小部件是应用程序的根。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter应用'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListPage([
        PageInfo('基础Widgets', (ctx) => BaseWidgets()),
        PageInfo('布局类Widgets', (ctx) => LayoutWidgets()),
        PageInfo('容器类Widgets', (ctx) => ContainerWidgets()),
        PageInfo('可滚动类Widgets', (ctx) => ScrollWidgets()),
        PageInfo('功能型Widgets', (ctx) => FuncWidgets())
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
