import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              style: _theme.textTheme.headline6,
              children: [
                TextSpan(
                  text: 'Popular',
                  style: _theme.textTheme.headline6.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' This Week',
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Wrap(
            children: [
              buildFeedContainer(
                _theme,
                image: 'img2.jpg',
                personImage: 'person2.jpg',
                personInfo: 'Graphic Designer',
                personName: 'Lucy hange',
                description:
                    'Create Planets illustration with illustrator in 60 minutes',
                color: Color.fromRGBO(245, 167, 126, 1),
              ),
              buildFeedContainer(
                _theme,
                image: 'img6.jpg',
                description:
                    'Learning How To Create Beautiful Scences in illustrator in 60 minutes',
                personImage: 'person3.jpg',
                personInfo: 'Frontend Dev',
                personName: 'Meryl Webb',
                color: Color.fromRGBO(160, 104, 133, 1),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildFeedContainer(
    ThemeData _theme, {
    Color color = Colors.blue,
    String image,
    String description,
    String personName,
    String personImage,
    String personInfo,
  }) {
    return Container(
      width: 250,
      height: 400,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Row(children: [
              Container(
                // padding: EdgeInsets.all(3),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(personImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    personName,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  Text(
                    personInfo,
                    style: _theme.textTheme.caption
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ))
            ]),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              description,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
