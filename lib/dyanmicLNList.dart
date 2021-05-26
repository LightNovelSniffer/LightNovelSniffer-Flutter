import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'constantes.dart';


class DyanmicLNList extends StatefulWidget {
  @override
  State createState() => new DyanmicLNListImplementation();
}

class DyanmicLNListImplementation extends State<DyanmicLNList> {
  List<String> lightNovels = ["BTTH", "TODAG"];

  void _addLightNovel() {
    var word = WordPair.random().asPascalCase;
    lightNovels.add(word);
    setState(() {}); // Redraw the Stateful Widget
  }

  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(Constants.friendlyAppName),
        centerTitle: true,
      ),
      body: new Column(
        children: <Widget>[
          new Expanded(
              child: new ListView.builder(
                  itemCount: lightNovels.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return new Text(lightNovels[index]);
                  }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addLightNovel,
        tooltip: 'Add Light Novel',
        child: Icon(Icons.add),
      ),
    );
  }
}
