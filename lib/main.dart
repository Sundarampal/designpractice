import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Scaffold and Appbar'), centerTitle: true),
        body: Center(child: Text("I am the body")
        ),
      ),
    ),
  );
}
