import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
   //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ Column(
          children: const <Widget>[
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
            ),

          ],
      ),
        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/login');}, child: const Text('跳转到登录页面')),
        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/register1');}, child: const Text('跳转到注册页面'))
      ],
    );
  }
}