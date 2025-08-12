import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(
          child: Column(
            children: [
              Center(
                child:Center(
                        child:
                            Text('Scaffold and Appbar'),


                      ),
                    ),



            ],
          ),
        ), centerTitle: true),
        body: Center(child: Text("I am the body")

        ),
      ),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: true,



    ),
  );
}
