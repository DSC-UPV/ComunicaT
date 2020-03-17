import "package:flutter/material.dart";

class AppBarButton extends StatelessWidget {
  final Icon icon;

  AppBarButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: () {},
    );
  }
}
