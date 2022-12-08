import 'package:flutter/material.dart';
import './components/header_bar.dart';
import 'components/category_item.dart';

class selectcategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Headerbar(
        headerTitle: 'Select Category',
      ),
      body: GridView(
          padding: EdgeInsets.all(25),
          children: [
            CategoryItem(categoryTitle: 'business'),
            CategoryItem(categoryTitle: 'entertainment'),
            CategoryItem(categoryTitle: 'environment'),
            CategoryItem(categoryTitle: 'food'),
            CategoryItem(categoryTitle: 'health'),
            CategoryItem(categoryTitle: 'politics'),
            CategoryItem(categoryTitle: 'science'),
            CategoryItem(categoryTitle: 'sports'),
            CategoryItem(categoryTitle: 'technology'),
            CategoryItem(categoryTitle: 'top'),
            CategoryItem(categoryTitle: 'world')
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
