import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
   //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  SettingPage({Key? key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("我是一个文本"),
        ),
         ListTile(
          title: Text("我是一个文本"),
        ),
         ListTile(
          title: Text("我是一个文本"),
        ),
         ListTile(
          title: Text("我是一个文本"),
        )
      ],
    );
  }
}