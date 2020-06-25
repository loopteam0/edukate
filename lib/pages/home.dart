import 'package:education/widgets/feed.dart';
import 'package:education/widgets/menu.dart';
import 'package:education/widgets/right_pane.dart';
import 'package:education/widgets/stories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        NavRails(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stories(),
                Feed(),
              ],
            ),
          ),
        ),
        RightPane(),
      ]),
    );
  }
}
