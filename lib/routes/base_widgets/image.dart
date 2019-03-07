import 'package:flutter/material.dart';
import '../../widgets/index.dart';

class ImageWidgets extends StatefulWidget {
  final image = "lib/assets/images/image.png";
  @override
  _ImageWidgetsState createState() => _ImageWidgetsState();
}

class _ImageWidgetsState extends State<ImageWidgets> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      children: <Widget>[
        H1('图片及Icon', 32),
        Text('Flutter中，我们可以通过Image来加载并显示图片，Image的数据源可以是asset、文件、内存以及网络。'),
        H1('ImageProvider'),
        Text(
            'ImageProvider 是一个抽象类，主要定义了图片数据获取的接口load()，从不同的数据源获取图片需要实现不同的ImageProvider ，如AssetImage是实现了从Asset中加载图片的ImageProvider，而NetworkImage实现了从网络加载图片的ImageProvider。'),
        H1('Image'),
        Text(
            'Image widget有一个必选的image参数，它对应一个ImageProvider。下面我们分别演示一下如何从asset和网络加载图片。'),
        H1('从asset中加载图片', 18),
        Row(
          children: <Widget>[
            Image(
              image: AssetImage(widget.image),
              width: 100.0,
            ),
          ],
        ),
        H1('ICON'),
        Row(
          children: <Widget>[
            Icon(
              Icons.accessible,
              color: Colors.blue,
            ),
            Icon(
              Icons.error,
              color: Colors.blue,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.blue,
            ),
          ],
        )
      ],
    );
  }
}
