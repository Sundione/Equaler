import 'package:flutter/material.dart';
import 'header_bar.dart';
import 'menubar.dart';
import 'newsCard.dart';

void main() {
  var app = MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: Headerbar(),
        drawer: Sidemenu(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text('  Suggestion',
                  style: TextStyle(
                    color: Color.fromRGBO(50, 48, 45, 1),
                    fontSize: 42,
                  )),
            ),
            Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  NewsCard(),
                  NewsCard(),
                  NewsCard(),
                  NewsCard(),
                ])),
          ],
        ),
      ));
  runApp(app);
}
