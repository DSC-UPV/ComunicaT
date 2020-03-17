import "package:flutter/material.dart";

import "package:comunicat/pages/config_page.dart";

class ConfigButton extends StatelessWidget {
  final Icon icon;
  final Brightness bright;

  ConfigButton(this.icon, this.bright);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ConfigPage();//bright);
               },
          ),
        );
      },
    );
  }
}
        