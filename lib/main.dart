//
// import 'package:flutter/material.dart';
// import 'package:testing_drop_down/second_page.dart';
//
// void main() {
//   runApp(
//       MaterialApp(
//     home: Schedule(),
//   ));
// }
// class Schedule extends StatelessWidget {
//   Schedule({this.drop});
//   final String drop;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(
//               onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Schedule1()));
//               },
//               child: Text("press"),
//             ),
//             Text('this is data = $drop '),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:testing_drop_down/builder.dart';
import 'package:testing_drop_down/second_page.dart';
// import 'package:testing_drop_down/third.dart';


void main() {
  runApp(MaterialApp(
    home: SecondPage(),
  ),
  );
    }

class SecondPage extends StatelessWidget {
  SecondPage({Key key, this.text}) : super(key: key);


  String text ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("this is Screen 1 value is $text"),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>nik()));
            }, child: Text("push")),
            TextButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text("back")),
            // Container(
            //   height: 500.0,
            //   width: double.infinity,
            //     child:BuilderTile(text: [text],)),
          ],
        ),
      ),
    );
  }
}