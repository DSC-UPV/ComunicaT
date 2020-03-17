import 'package:flutter/material.dart';

import "package:comunicat/objects/post.dart";
import "package:comunicat/pages/list_page.dart";
import "package:comunicat/buttons/home_button.dart";
import "package:comunicat/buttons/appbar_button.dart";
import "package:comunicat/buttons/config_button.dart";

void main() {
  runApp(ComunicaT());
}

class ComunicaT extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ComunicaT();
  }
}

class _ComunicaT extends State<ComunicaT> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    List<Post> classesList = [];
    List<Post> sportsList = [];
    List<Post> erasmusList = [];
    List<Post> asosList = [];
    List<Post> quejasList = [];
    List<Post> othersList = [];

    ListPage clasesPage =
        ListPage("Clases de repaso", classesList, Colors.green[800]);
    ListPage sportsPage =
        ListPage("Deportes", sportsList, Colors.deepOrange[800]);
    ListPage erasmusPage = ListPage("Erasmus", erasmusList, Colors.teal[800]);
    ListPage asosPage =
        ListPage("Asociciones y mas", asosList, Colors.purple[800]);
    ListPage quejasPage = ListPage("Quejas", quejasList, Colors.yellow[800]);
    ListPage othersPage = ListPage("Otros", othersList, Colors.cyan[800]);
    classesList.add(Post("Doy clases de EDA",
        "Doy clases de EDA, me llamo Juan Jose, @jose_juan en Instagram, 4 euros la hora, saque matricula de honor en segundo"));

    classesList.add(Post("Buenas me llamo Juan", "Doy clases de EDA"));
    sportsList.add(Post("Buenas juego futbol", "Busco gente"));
    asosList.add(Post("Buenas juego futbol", "Busco gente"));
    quejasList.add(Post("Buenas juego futbol", "Busco gente"));
    othersList.add(Post("Hola, busco ayuda sobre mi carrea",
        "Me llamo Jose y quiero entrar a informatica"));
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ComunicaT"),
          actions: <Widget>[
            AppBarButton(Icon(Icons.account_circle)),
            ConfigButton(Icon(Icons.build), Brightness.dark),
          ],
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 2,
                children: <Widget>[
                  HomeButton("assets/home_clasesrefuerzo_icon.png",
                      Colors.green, "Clases de refuerzo", clasesPage),
                  HomeButton("assets/home_deportes_icon.png", Colors.deepOrange,
                      "Deportes", sportsPage),
                  HomeButton("assets/home_erasmus_icon.png", Colors.teal,
                      "Erasmus", erasmusPage),
                  HomeButton("assets/home_asociaciones_icon.png", Colors.purple,
                      "Asociaciones y mas", asosPage),
                  HomeButton("assets/home_quejas_icon.png", Colors.yellow,
                      "Quejas", quejasPage),
                  HomeButton("assets/home_otros_icon.png", Colors.cyan, "Otros",
                      othersPage),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
