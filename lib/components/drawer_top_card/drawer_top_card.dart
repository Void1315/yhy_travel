import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerTopCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40.0, bottom: 20.0, left: 10, right: 10),
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 36.0,
                backgroundImage: NetworkImage(
                    "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=4203583400,2213878735&fm=26&gp=0.jpg"),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.ac_unit,
                      color: Theme.of(context).cardColor,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.ac_unit,
                      color: Theme.of(context).cardColor,
                      size: 30,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
