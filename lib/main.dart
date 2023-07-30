import 'package:flutter/material.dart';
import 'package:flutteroman/pages/MyHomePage.dart';
import 'package:flutteroman/pages/secondpage.dart';
void main() {
  runApp(MyApp());
}
// home: Text("Hello Flutter Oman"),
// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: firstpage(),
//     );
//   }
// }
// class firstpage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("title"),
//       ),
//       body: Text("Hello Flutter Oman"),
//     );
//   }
//
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: secondwidget(),
    );
  }
}

