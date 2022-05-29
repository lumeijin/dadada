import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class LifePage extends StatelessWidget {
  const LifePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("生活区"),
      ),
      body:const Text('我是生活区',style: TextStyle(fontSize: 40.0),),
    );
  }
}

