import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yhy_travel/api/apis.dart';
import 'package:yhy_travel/components/drawer/IndexDrawer.dart';

class LoginIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aaa"),
      ),
      drawer: IndexDrawer(),
      body: Center(
        child: RaisedButton(
          child: Text("测试"),
          onPressed: () async {
            Response response = await API.getUserInfo();
            print(response.data);
          },
        ),
      ),
    );
  }
}
