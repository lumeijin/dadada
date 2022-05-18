import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            
      appBar: AppBar(
        title: const Text("登录")
      ),
      body: Center(
        
        child: Column(
         children: <Widget>[
            const SizedBox(height: 40),
            const Text('这是一个登录页面,点击登录会执行登录操作'),
            ElevatedButton(
              child: const Text("立即登录"),
              onPressed: (){
                  Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}