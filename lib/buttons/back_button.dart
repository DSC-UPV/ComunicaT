import "package:flutter/material.dart";

class BackButton extends StatelessWidget {
  final Icon icon = Icon(Icons.arrow_back);

  BackButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: () {
        Navigator.pop(context, true);
      },
    );
  }
}
