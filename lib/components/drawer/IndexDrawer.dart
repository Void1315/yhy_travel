import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yhy_travel/components/drawer_top_card/drawer_top_card.dart';

class IndexDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerTopCard(),
        ],
      ),
    );
  }
}
