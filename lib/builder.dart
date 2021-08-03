import 'package:flutter/material.dart';

class BuilderTile extends StatelessWidget {

  BuilderTile({this.text});

  List<String> text = [ ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext ctxt, int i) {
        return ListTile(
          leading: Text("1"),
          title: Text(text[i]),
          subtitle: Text(text[i]),
        );
      },
      itemCount:text?.length,
    );
  }
}
