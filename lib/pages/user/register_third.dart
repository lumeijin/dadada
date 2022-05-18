import 'package:dadada/pages/tabs.dart';
import 'package:flutter/material.dart';
//引入tabs

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("第三步-完成注册")),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              const Text("输入密码完成注册"),
              const SizedBox(height: 40),
              ElevatedButton(
                child: Text('确定'),
                onPressed: () {
                  //返回根
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const Tabs(index:2)),
                      (route) => route == null);
                },
              )
            ],
          ),
        ));
  }
}
