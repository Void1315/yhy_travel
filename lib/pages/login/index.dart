import 'package:flutter/material.dart';
import 'package:yhy_travel/components/drawer/IndexDrawer.dart';

class LoginIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aaa"),
      ),
      drawer: IndexDrawer(),
    );
  }
}
