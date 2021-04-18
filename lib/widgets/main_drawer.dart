import 'package:flutter/material.dart';
import 'package:multiple_screen_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, Icon icon, Function tapHandler) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            padding: EdgeInsets.all(20),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Meals',
            Icon(
              Icons.restaurant,
              size: 26,
            ),
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            'Filters',
            Icon(
              Icons.filter,
              size: 26,
            ),
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.screenName);
            },
          ),
        ],
      ),
    );
  }
}
