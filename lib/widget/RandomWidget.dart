import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

class RandomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var word = WordPair.random();

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(word.toString()),
    );
  }

}