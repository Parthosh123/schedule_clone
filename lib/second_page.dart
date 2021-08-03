// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:testing_drop_down/main.dart';
//
//
//
// List<String> value = ['please enter something'];
//
//
// class Schedule1 extends StatefulWidget {
//   const Schedule1({Key key}) : super(key: key);
//
//   @override
//   _Schedule1State createState() => _Schedule1State();
// }
//
// class _Schedule1State extends State<Schedule1> {
//
//   String dropdownValue;
//
//
//   Future getData()async{
//     print("geting data");
//     http.Response response= await http.get(Uri.parse('http://34.83.46.202/cyberhome/home.php?username=test&query=table'));
//     if(response.statusCode==200) {
//       var data = jsonDecode(response.body);
//
//       print(data);
//
//       return data;
//     }
//
//   }
//
//   storeTheData() async{
//
//     var data = await getData();
//     // data = await jsonDecode(data);
//     //print(data[9]);
//     for(int i =0;i>=0;i++) {
//       if(i != (data.length)){
//         // print(data[i]);
//         setState(() {
//           value.add(data[i]);
//         });
//
//
//       }
//
//       else if(i == (data.length)){
//         // print("length of i = $i");
//         // print('inside the else if');
//         //value.remove(value[0]);
//         break;
//       }
//       print("value ======================== $value");
//     }
//   }
//
//   @override
//   void initState() {
//      print("init");
//     storeTheData();
//     super.initState();
//   }
// @override
//   void dispose() {
//    storeTheData().dispose();
//     super.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DropDown'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           DropdownButton<String>(
//             // dropdownColor: Colors.purple,
//             hint: Text("Select any one devices"),
//             value: dropdownValue,
//             icon: const Icon(Icons.arrow_downward),
//             iconSize: 24,
//             elevation: 16,
//             style: const TextStyle(
//                 color: Colors.deepPurple
//             ),
//             onChanged: (String newValue) {
//               setState(() {
//                 this.dropdownValue = newValue;
//               });
//             },
//             items:value
//                 .map((value1) {
//               return DropdownMenuItem<String>(
//                 value: value1,
//                 child: Text(value1),
//               );
//             })
//                 .toList(),
//           ),
//           SizedBox(
//             height: 30.0,
//           ),
//           Text("this is dropdown = $dropdownValue"),
//           TextButton(onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(text: dropdownValue,)));
//           }, child: Text("previous page"))
//         ],
//       ),
//     );
//   }
// }
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testing_drop_down/third.dart';

import 'main.dart';

List<String> value = ['press get data function to get the list of the devices'];
String dropdownValue;

class nik extends StatefulWidget {


  @override
  _nikState createState() => _nikState();
}

class _nikState extends State<nik> {





  Future getData()async{
    print("geting data");
    http.Response response= await http.get(Uri.parse('http://34.83.46.202/cyberhome/home.php?username=test&query=table'));
    if(response.statusCode==200) {
      var data = jsonDecode(response.body);
      // print(data);

      return data;
    }
  }
  storeTheData() async{

    var data = await getData();
    // data = await jsonDecode(data);
    // print(data[9]);
    for(int i =0;i>=0;i++) {
      if(i != (data.length)){
        // print(data[i]);
        setState(() {
          value.add(data[i]);
        });


      }

      else if(i == (data.length)){
        // print("length of i = $i");
        // print('inside the else if');
        value.remove(value[0]);
        break;
      }
      print("value ======================== $value");
    }
  }
  @override
  void initState() {
    // getData();
    print('getting into init');
    storeTheData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold
      (
      appBar: AppBar(title: Text("DropDown Box"),),
      body: Center(
        child: SafeArea(

          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 50,),

                SizedBox(height: 50,),
                DropdownButton(
                  // dropdownColor: Colors.purple,
                  hint: Text("Select any one devices"),
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Colors.deepPurple
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      print("dropdown value = $dropdownValue");
                      dropdownValue = newValue;
                      print("=============");
                      print("dropdown value = $dropdownValue");
                    });
                  },
                  items:value
                      .map((value1) {
                    return DropdownMenuItem<String>(
                     value: value1,
                      child: Text(value1),
                    );
                  })
                      .toList(),
                ),
                Text("the selected device is = $dropdownValue"),
                TextButton(onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage(text: dropdownValue,)));

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(text: dropdownValue,)));
                }, child: Text("Press")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}