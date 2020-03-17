import "package:flutter/material.dart";

import "package:comunicat/objects/post.dart";
import "package:comunicat/pages/post_page.dart";
import "package:comunicat/pages/addpost_page.dart";
import "package:comunicat/buttons/appbar_button.dart";

class ListPage extends StatefulWidget {
  final String title;
  final List<Post> list;
  final Color color;

  ListPage(this.title, this.list, this.color);

  @override
  State<StatefulWidget> createState() {
    return _ListPage();
  }
}

class _ListPage extends State<ListPage> {
  String _title;
  List<Post> _list;
  Color _color;

  @override
  void initState() {
    //Se ejecuta antes que build
    _title = widget.title;
    _list = widget.list;
    _color = widget.color;
    super.initState();
  }

  @override
  void didUpdateWidget(ListPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  String _cutTitle(String title, Post post){
    if(post.getTitle().length >= 36){
      return post.getTitle().substring(0,33) + "...";
    }
    else{
      return post.getTitle();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(_title),
        actions: <Widget>[
          AppBarButton(Icon(Icons.account_circle)),
          AppBarButton(Icon(Icons.build)),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemBuilder: (context, position) {
          return Card(
            color: _color,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: FlatButton(
                child: Text(
                  _cutTitle(_list.elementAt(position).getTitle(), _list.elementAt(position)),
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return PostPage(_title, _list.elementAt(position), _color);
                    }),
                  );
                },
              ),
            ),
          );
        },
        itemCount: _list.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return AddPostPage(_color, _list);
            }),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: _color,
      ),
    );
  }
}
