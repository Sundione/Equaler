import 'dart:core';
import 'package:flutter/material.dart';
import '../screens/read_news.dart';

//card for every news except suggestion news
class NewsCard extends StatelessWidget {
//========================= Initial Constructor ================================
  final String imgUrl;
  final String newsTitle;
  final String newsDate;
  final String newsDesc;
  final String newsContent;

  NewsCard(
      {this.imgUrl = "https://comnplayscience.eu/app/images/notfound.png",
      this.newsTitle = "This is news title",
      this.newsDate = "This is news date",
      this.newsContent = "This is news content",
      this.newsDesc = "This is news description"});

//==============================================================================

  @override
  Widget build(BuildContext context) {
    //go to ReadNews page and send information via constructor function
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ReadNews(
                //Send constructor to readnews page
                imgUrl: imgUrl,
                newsTitle: newsTitle,
                newsDate: newsDate,
                newsContent: newsContent,
                newsDesc: newsDesc),
          ),
        );
      },
      child:
          //create and formate news card
          Container(
        //responsive design from screen size
        width: MediaQuery.of(context).size.width *
            0.9, //responsive design from screen
        height: MediaQuery.of(context).size.height *
            0.18, //responsive design from screen
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Card(
          //Create Newscard box for display image, date and content news
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: const Color.fromRGBO(246, 240, 235, 1),
          child: LayoutBuilder(builder: (ctx, constraints) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  //news image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imgUrl,
                      width: constraints.maxWidth *
                          0.35, //responsive design from screen
                      height: constraints.maxHeight *
                          0.9, //responsive design from screen
                      fit: BoxFit.cover,
                    ),
                  ),
                  //info
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //display news title
                          Text(
                            newsTitle,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            overflow:
                                TextOverflow.ellipsis, //Represent clipped text
                            maxLines: 2,
                          ),
                          //display news date
                          Text(newsDate),
                          Row(
                            children: const [
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
