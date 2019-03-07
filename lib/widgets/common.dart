import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  H1(this.title, [this.size = 24.0]);

  final String title;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0, top: 5.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: size,
        ),
      ),
    );
  }
}
