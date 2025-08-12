import 'package:flutter/material.dart';
class HelloStateless  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title:Text("Hello")),
      ),
    );
  }
}
