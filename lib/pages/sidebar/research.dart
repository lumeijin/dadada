
import 'package:flutter/material.dart';

class ResearchPage extends StatelessWidget {
  const ResearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("科研区"),
      ),
      body:const Text('我是科研区',style: TextStyle(fontSize: 40.0),),
    );
  }
}
