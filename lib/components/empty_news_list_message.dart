import 'package:flutter/material.dart';

//component that display errorText if api send back empty news content
class EmptyNewsListMessage extends StatelessWidget {
//=================== Initial Constructor ======================

  final String errorText;
  EmptyNewsListMessage(this.errorText);

//==============================================================

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon for empty content
        const Padding(
          padding: EdgeInsets.only(top: 60),
          child: Icon(
            Icons.local_play_outlined,
            color: Color.fromRGBO(100, 93, 83, 1),
            size: 50.0,
          ),
        ),
        //error text
        Text(errorText,
            textAlign: TextAlign.center,
            style: const TextStyle(height: 2, fontSize: 16)),
      ],
    );
  }
}
