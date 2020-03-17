import "package:flutter/material.dart";

import 'package:comunicat/pages/list_page.dart';

class HomeButton extends StatelessWidget {
  final String imagePath;
  final Color color;
  final String text;
  final ListPage listPage;

  HomeButton(this.imagePath, this.color, this.text, this.listPage);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return this.listPage;
            },
          ),
        );
      },
      color: color,
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Text(text),
          Image.asset(imagePath),
        ],
      ),
    );
  }
}
