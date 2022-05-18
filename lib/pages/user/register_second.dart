import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("第二步-验证码")),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              const Text("输入验证码完成注册"),
              const SizedBox(height: 40),
              ElevatedButton(
                child: const Text('下一步'),
                onPressed: () {
                  Navigator.pushNamed(context, '/register3');

                  //替换路由
                  // Navigator.of(context).pushReplacementNamed('/registerThird');
                },
              )
            ],
          ),
        ));
  }
}
