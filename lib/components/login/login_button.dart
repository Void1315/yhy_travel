import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget{
  Function onPressed;
  String text;
  EdgeInsetsGeometry margin;

  LoginButton({this.text,this.onPressed,this.margin});

  Widget build(BuildContext context) {
    return Container(
              margin: margin,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.only(top: 10,bottom: 14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                child: Text(
                  this.text,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).indicatorColor),
                ),
                onPressed: this.onPressed,
              ),
            );
  }
  
}