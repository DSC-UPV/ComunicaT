import "package:flutter/material.dart";

import "package:comunicat/objects/post.dart";

class AddPostPage extends StatefulWidget {
  final Color color;
  final List<Post> list;

  AddPostPage(this.color, this.list);

  @override
  State<StatefulWidget> createState() {
    return _AddPostPage();
  }
}

class _AddPostPage extends State<AddPostPage> {
  Color _color;
  List<Post> _list;
  String _title;
  String _desc;
  final TextEditingController _textEditControlTitle =
      new TextEditingController();
  final TextEditingController _textEditControlDesc =
      new TextEditingController();

  @override
  void initState() {
    //Se ejecuta antes que build
    _color = widget.color;
    _list = widget.list;
    super.initState();
  }

  @override
  void didUpdateWidget(AddPostPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Añade una entrada"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              enabled: true,
              maxLength: 36,
              maxLengthEnforced: true,
              //style: TextStyle,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Introduce titulo para el post',
              ),
              controller: _textEditControlTitle,
              onChanged: (String e) {
                setState(
                  () {
                    _title = e;
                  },
                );
              },
              onSubmitted: _submissionTitle,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              enabled: true,
              maxLength: 1000,
              maxLengthEnforced: true,
              //style: TextStyle,
              obscureText: false,
              decoration: InputDecoration(
                fillColor: _color,
                focusColor: _color,
                hoverColor: _color,
                border: OutlineInputBorder(),
                labelText: 'Introduce descripcion para el post',
              ),
              controller: _textEditControlDesc,
              onChanged: (String e) {
                setState(
                  () {
                    _desc = e;
                  },
                );
              },
              onSubmitted: _submissionDesc,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_title != null && _desc != null) {
            addToList(_title, _desc, _list);
          }
          Navigator.pop(context, true);
        },
        child: Icon(Icons.add_comment),
        backgroundColor: _color,
      ),
    );
  }

  void _submissionTitle(String e) {
    _title = _textEditControlTitle.text;
  }

  void _submissionDesc(String e) {
    _desc = _textEditControlDesc.text;
  }

  void addToList(String t, String d, List<Post> l) {
    l.add(Post(t, d));
  }
}
