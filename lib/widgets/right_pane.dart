import 'package:flutter/material.dart';

class RightPane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Container(
      width: 370,
      padding: EdgeInsets.all(15),
      color: Colors.grey[200],
      child: ListView(
        children: [
          SizedBox(height: 40),
          RichText(
            text: TextSpan(
              style: _theme.textTheme.headline6,
              children: [
                TextSpan(
                  text: 'Advanced',
                  style: _theme.textTheme.headline6.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' Search',
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Start writing something',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 50,
                  child: FlatButton(
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    color: _theme.accentColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          buildFeedContainer(_theme,
              description:
                  'Create a beautiful. Learning new Technics and Tricks',
              image: 'img1.jpg',
              personImage: 'person1.jpg',
              personInfo: 'Snr Designer',
              personName: 'Fread Parker'),
          buildFeedContainer(
            _theme,
            description:
                'Making a Beautiful Scene with New Preset, Created by Senior Illustrator',
            image: 'img5.jpg',
            personImage: 'person2.jpg',
            personInfo: 'Graphic Designer',
            personName: 'Lucy hange',
            color: Color.fromRGBO(212, 75, 119, 1),
          ),
          buildFeedContainer(
            _theme,
            description: 'Create Space illustrations in 10 easy steps ',
            image: 'img3.png',
            personImage: 'person3.jpg',
            personInfo: 'Front-end Dev',
            personName: 'Meryl Webb',
            color: Color.fromRGBO(57, 25, 92, 1),
          ),
        ],
      ),
    );
  }

  Container buildFeedContainer(ThemeData _theme,
      {Color color = Colors.blue,
      String image,
      String description,
      String personName,
      String personImage,
      String personInfo}) {
    return Container(
      width: 330,
      height: 220,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
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
                      image: AssetImage(personImage), fit: BoxFit.cover),
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
