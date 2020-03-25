import 'package:flutter/material.dart';
import "package:comunicat/my_flutter_app_icons.dart";
import 'package:url_launcher/url_launcher.dart';
class CodePage extends StatefulWidget {

  CodePage();

  State<StatefulWidget> createState() {
    return _CodePage();
  }
}
_launchURL() {
  launch('https://dsc.webs.upv.es/');
}

_launchURL2() {
  launch('https://www.instagram.com/dsc_valencia/');
}

class _CodePage extends State<CodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        actions: <Widget>[
          Tab(icon: Icon(MyCustomIcons.image2vector__2_)),
          Tab(icon: Icon(MyCustomIcons.image2vector__1_)),
          Tab(icon: Icon(MyCustomIcons.image2vector__1_)),
        ],
        title: Text("Developer Student Clubs"),

      ),
      body: Column(

        children: [Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Developer Student Clubs son grupos comunitarios basados en universidades para estudiantes interesados en las tecnologías de desarrolladores, entre ellas las de Google. Los estudiantes de todos los programas de grado o posgrado que estén interesados en crecer como desarrolladores son bienvenidos. Al unirse a un DSC, los estudiantes aumentan su conocimiento en un entorno de aprendizaje peer-to-peer y crean soluciones para las empresas locales y su comunidad.',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RaisedButton(
              onPressed: _launchURL,
              onLongPress: _launchURL2,
              child: Text('DSC'),
            ),
          ),
        ],



      ),

    );


  }
}