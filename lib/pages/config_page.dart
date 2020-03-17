import 'package:flutter/material.dart';

class ConfigPage extends StatefulWidget {

  ConfigPage();

  State<StatefulWidget> createState() {
    return _ConfigPage();
  }
}

class _ConfigPage extends State<ConfigPage> {
  Brightness _bright;
  bool luzState;

  /*void cambiarOscuro(bool value) {
    if (_bright == Brightness.light) {
      _bright = Brightness.dark;
    } else {
      _bright = Brightness.light;
    }
    //MyApp.changeBrightness(_bright);
  }*/

  @override
  void initState() {
    //Se ejecuta antes que build
    //_bright = widget.luz;
    super.initState();
  }

  Widget build(BuildContext context) {
    if (_bright == Brightness.light) {
      luzState = false;
    } else {
      luzState = true;
    }
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Ajustes"),
      ),
      body: Column(
        children: [
          /*SwitchListTile(
              value: luzState,
              //onChanged: cambiarOscuro,
              activeColor: Colors.deepOrange,
              secondary: Icon(Icons.brightness_3),
              title: Text('Modo oscuro')),*/
        ],
      ),
    );
    /* return  Scaffold(
        appBar: AppBar(
          title: Text('Ajustes'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(children: [
          SwitchListTile(
              value: luzState,
              onChanged: cambiarOscuro,
              activeColor: Colors.deepOrange,
              secondary: Icon(Icons.brightness_3),
              title: Text('Modo oscuro')),
        ]),
      
    ); */
  }
}
