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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('这里是登录页面'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('跳转到登录页面')),
          const Center(
            child: Text('这里是注册页面'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register1');
              },
              child: const Text('跳转到注册页面'))
        ],
      ),
    );
  }
}
