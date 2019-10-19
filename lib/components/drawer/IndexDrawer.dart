import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            color: Colors.lightBlue[300],
          )
        ],
      ),
    );
  }


}