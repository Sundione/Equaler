import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/NewsCard.dart';
import 'package:flutter_application_3/components/SectionTitle.dart';
import 'header_bar.dart';
import 'CategoryItem.dart';

class PageThai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Headerbar(
          headerTitle: 'Thai News',
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: [
          SectionTitle(title: "Thai News"),
          NewsCard(),
          NewsCard(),
          NewsCard(),
          NewsCard(),
          NewsCard(),
          NewsCard(),
        ]))));
    ;
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}