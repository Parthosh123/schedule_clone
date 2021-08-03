import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key key, this.text}) : super(key: key);


  final String text ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("this is sample============= $text"),
            TextButton(onPressed: (){
             Navigator.pop(context);
            }, child: Text("back")),
          ],
        ),
      ),
    );
  }
}