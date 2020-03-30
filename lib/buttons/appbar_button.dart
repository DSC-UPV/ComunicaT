import "package:flutter/material.dart";
import "package:comunicat/pages/user_page.dart";

class AppBarButton extends StatelessWidget {
  final Icon icon;

  AppBarButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return UserPage();//bright);
            },
          ),
        );
      },
    );
  }
}
