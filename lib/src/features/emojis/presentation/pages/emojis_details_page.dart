import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'EmojiDetailsPage')
class EmojiDetailsPage extends StatelessWidget {
  final String emojiName;

  const EmojiDetailsPage(
      {super.key, @PathParam('emojiName') required this.emojiName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(emojiName),
        ),
        body: Center(
          child: Text(
            emojiName,
            style: TextStyle(fontSize: 32),
          ),
        ));
  }
}
