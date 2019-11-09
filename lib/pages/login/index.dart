import 'package:flutter/material.dart';
import 'package:yhy_travel/components/login/login_button.dart';
import 'package:yhy_travel/components/text/card_color_text.dart';

class LoginIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: AlignmentDirectional.centerEnd,
              width: double.infinity,
              child: SafeArea(
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text('登录',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).cardColor)),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                height: 100.0,
                image: NetworkImage('http://lorempixel.com/640/480/business'),
              ),
            ),
            Text(
              "欢迎来到YHY-TRAVEL",
              style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500),
            ),
            LoginButton(
              text: "使用微信登录",
              onPressed: () {},
              margin: EdgeInsets.only(top: 30, bottom: 10),
            ),
            LoginButton(
              text: "创建账号",
              onPressed: () {},
              margin: EdgeInsets.only(bottom: 20),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: CardColorText(
                text: "更多选项",
              ),
            ),
            CardColorText(
              text: "点击继续，创建账号或更多选择按钮，即表明我同意于浩岩的服务条款、支付服务条款、隐私政策及非歧视政策。",
            ),
          ],
        ),
      ),
    );
  }
}
