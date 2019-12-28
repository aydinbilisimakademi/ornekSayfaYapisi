import 'package:flutter/material.dart';
import 'package:muin/pages/page_giris.dart';

void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(backgroundColor: Colors.blueAccent,primaryColor: Colors.blueAccent,),
      title: "Muin",
      home: Scaffold(
        body: Container(
            color: Color.fromARGB(255, 27, 23, 43),
            child: PageGiris()),
      ),
    );
  }
}
