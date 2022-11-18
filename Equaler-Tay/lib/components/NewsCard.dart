import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/PageThai.dart';
import 'package:flutter_application_3/readnew.dart';
import 'package:flutter_application_3/selectcategory.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:core';

class NewsCard extends StatelessWidget {
  final String imgUrl;

  final String newsTitle;

  final String newsDate;

  NewsCard(
      {this.imgUrl = "https://picsum.photos/seed/137/600",
      this.newsTitle = "This is news title",
      this.newsDate = "This is news date"});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => readnew(),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.2,
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromRGBO(246, 240, 235, 1),
          child: LayoutBuilder(builder: (ctx, constraints) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      imgUrl,
                      width: constraints.maxWidth * 0.35,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(newsDate),
                          Text(
                            newsTitle,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                          Row(
                            children: [
                              Text(
                                "Read More",
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 15,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
