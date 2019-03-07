import 'package:flutter/material.dart';
import '../../widgets/index.dart';

class FormWidgets extends StatefulWidget {
  @override
  _FormWidgetsState createState() => _FormWidgetsState();
}

class _FormWidgetsState extends State<FormWidgets> {
  String username = 'Reborn';
  String password = '123';

  @override
  Widget build(BuildContext context) {
    return Layout(
      children: <Widget>[
        H1('表单'),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '用户名或邮箱',
                prefixIcon: Icon(Icons.person),
              ),
              onChanged: (v) {
                setState(() {
                  username = v;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock),
              ),
              onChanged: (v) {
                setState(() {
                  password = v;
                });
              },
              obscureText: true,
            ),
            H1('用户名: ' + username, 14),
            H1('密码: ' + password, 14),
          ],
        )
      ],
    );
  }
}
