import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: _theme.textTheme.headline6,
              children: [
                TextSpan(
                  text: 'Streaming',
                  style: _theme.textTheme.headline6.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' Now',
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(children: [
            buildStoryContainer(_theme, 'person1.jpg'),
            buildStoryContainer(_theme, 'person2.jpg'),
            buildStoryContainer(_theme, 'person3.jpg'),
            buildStoryContainer(_theme, 'person1.jpg'),
            buildStoryContainer(_theme, 'person4.jpg'),
            buildStoryContainer(_theme, 'person5.jpg'),
          ])
        ],
      ),
    );
  }

  Container buildStoryContainer(ThemeData _theme, String image) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      // padding: EdgeInsets.all(3),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: _theme.accentColor,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(22),
      ),
    );
  }
}
