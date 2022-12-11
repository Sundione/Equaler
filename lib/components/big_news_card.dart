import 'package:flutter/material.dart';
import '../read_news.dart';

class BigNewsCard extends StatelessWidget {
//Create Big news card for Suggestion in main page
//========================= Initial Constructor ============================

  final String imgUrl;
  final String newsTitle;
  final String newsDate;
  final String newsDesc;
  final String newsContent;

  BigNewsCard(
      {this.imgUrl = "https://comnplayscience.eu/app/images/notfound.png",
      this.newsTitle = "This is news title",
      this.newsDate = "This is news date",
      this.newsContent = "This is news content",
      this.newsDesc = "This is news description"});
  
//==========================================================================
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {   //Go to ReadNews and send constructor ReadNews page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ReadNews(//Constructor for send to ReadNews page
                imgUrl1: imgUrl,
                newsTitle1: newsTitle,
                newsDate1: newsDate,
                newsContent1: newsContent,
                newsDesc1: newsDesc),
          ),
        )
      },
      child: Container(
        //big news card formatting
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.21,
        margin: const EdgeInsets.symmetric(vertical: 5),
        //responsive design from screen
        child: Card(
          //Create Big news card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: const Color.fromRGBO(246, 240, 235, 1),
          child: LayoutBuilder(builder: (ctx, constraints) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imgUrl, //Display news image
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.436,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7, top: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(newsDate), //Display news date
                        Text(
                          newsTitle, //Display news title
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
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
