import 'dart:convert' as convert;
import 'package:http/http.dart' as https;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("data"),),
      body: Center(child: ElevatedButton(onPressed: () async {
        await Downloader.getDownloadedData(
          "sundarampal.github.io",
          "/myjsonfiles/Newsquizess.json",
        );
      },
          child: const Text("Get Data"),
      ),
      ),
    );

  }
}
class Downloader {
  static Future getDownloadedData(String baseurl, String parturl) async {
    try{
      final url = Uri.https(baseurl,parturl,{});
      final response = await https.get(url);
      print(response.statusCode);
      final jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
      return jsonResponse;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
