import "package:flutter/material.dart";

import "package:comunicat/objects/post.dart";

class PostPage extends StatefulWidget {
  final String title;
  final Post post;
  final Color color;

  PostPage(this.title, this.post, this.color);

  @override
  State<StatefulWidget> createState() {
    return _PostPage();
  }
}

class _PostPage extends State<PostPage> {
  String _title;
  Post _entry;
  Color _color;

  @override
  void initState() {
    //Se ejecuta antes que build
    _title = widget.title;
    _entry = widget.post;
    _color = widget.color;
    super.initState();
  }

  @override
  void didUpdateWidget(PostPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  String _cutTitle(String title, Post entry) {
    if (entry.getTitle().length >= 36) {
      return entry.getTitle().substring(0, 33) + "...";
    } else {
      return entry.getTitle();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(_title),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            color: _color,
            child: SizedBox(
              height: 70.0,
              width: 900.0,
              child: Center(
                child: Text(
                  _cutTitle(_entry.getTitle(), _entry),
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: _color,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                _entry.getDescription(),
                style:
                    TextStyle(fontSize: 18.0), //, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
