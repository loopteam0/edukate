import 'package:flutter/material.dart';

class NavRails extends StatefulWidget {
  @override
  _NavRailsState createState() => _NavRailsState();
}

class _NavRailsState extends State<NavRails> {
  bool _exteded = true;
  bool get exteded => _exteded;
  set exteded(bool exteded) {
    setState(() {
      _exteded = exteded;
    });
  }

  int _seletedIndex = 1;
  int get seletedIndex => _seletedIndex;
  set seletedIndex(int seletedIndex) {
    setState(() {
      _seletedIndex = seletedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return NavigationRail(
      destinations: [
        NavigationRailDestination(
          icon: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: _theme.accentColor,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.apps,
              color: Colors.white,
            ),
          ),
          label: RichText(
            text: TextSpan(
              style: _theme.textTheme.headline5,
              children: [
                TextSpan(
                  text: 'Edu-',
                ),
                TextSpan(
                  text: 'Kate',
                  style: _theme.textTheme.headline5
                      .copyWith(color: _theme.accentColor),
                )
              ],
            ),
          ),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.home),
          label: Text('Home'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.hourglass_empty),
          label: Text('Discover'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.bubble_chart),
          label: Text('Messages'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.settings),
          label: Text('Settings'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.thumb_up),
          label: Text('Follow'),
        ),
        NavigationRailDestination(
          icon: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.lightbulb_outline,
              color: Colors.white,
            ),
          ),
          label: Text(
            'Updated Courses',
            style: _theme.textTheme.subtitle2,
          ),
        ),
      ],
      elevation: 1,
      extended: exteded,
      leading: IconButton(
        icon: exteded ? Icon(Icons.close) : Icon(Icons.memory),
        onPressed: () {
          exteded = !exteded;
        },
      ),
      selectedIndex: seletedIndex,
      onDestinationSelected: (int index) {
        seletedIndex = index;
      },
      selectedIconTheme: IconThemeData(
        color: _theme.accentColor,
        size: 25,
      ),
    );
  }
}
