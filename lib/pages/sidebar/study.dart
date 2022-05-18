
import 'package:flutter/material.dart';

class StudyPage extends StatelessWidget {
  const StudyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("学习区"),
      ),
      body:const Text('我是学习区',style: TextStyle(fontSize: 40.0),),
    );
  }
}
