import "package:flutter/material.dart";
import 'package:keyboard_actions/keyboard_actions.dart';


import "package:comunicat/objects/post.dart";
import "package:comunicat/buttons/appbar_button.dart";

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
    final FocusNode _nodeText1 = FocusNode();
    final FocusNode _nodeText2 = FocusNode();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Añade una entrada"),
        actions: <Widget>[
          AppBarButton(Icon(Icons.add)),
        ],
      ),
      body: KeyboardActions(
        config: _buildConfig(context, _nodeText1, _nodeText2),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.number,
                    focusNode: _nodeText1,
                    decoration: InputDecoration(
                      hintText: "Input Number",
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    focusNode: _nodeText2,
                    decoration: InputDecoration(
                      hintText: "Input Text with Custom Done Button",
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  KeyboardActionsConfig _buildConfig(
      BuildContext context, FocusNode _nodeText1, FocusNode _nodeText2) {
    return KeyboardActionsConfig(
        keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
        keyboardBarColor: Colors.grey[200],
        nextFocus: true,
        actions: [
          KeyboardAction(
            focusNode: _nodeText1,
          ),
          KeyboardAction(
            focusNode: _nodeText2,
            toolbarButtons: [
              (node) {
                return GestureDetector(
                  onTap: () => node.unfocus(),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.close),
                  ),
                );
              }
            ],
          )
        ]);
  }
}
