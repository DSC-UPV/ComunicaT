import "package:flutter/material.dart";
import "package:comunicat/pages/code_page.dart";
class CodeButton extends StatelessWidget {
  final Icon icon;

  CodeButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CodePage();//bright);
            },
          ),
        );
      },
    );
  }
}
