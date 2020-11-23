import 'package:flutter/material.dart';
import 'package:coffee_list/models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;

  CoffeeTile({this.coffee});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            //this is the image on the ListTile
            radius: 25.0,
            backgroundColor: Colors.brown[coffee.strength],
            backgroundImage: AssetImage('assets/coffee_icon.png'),
          ),
          title: Text(coffee.name),
          subtitle: Text('Takes ${coffee.sugars} of sugar(s)'),
        ),
      ),
    );
  }
}
