
import 'package:flutter/material.dart';

class LeisurePage extends StatelessWidget {
  const LeisurePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("休闲区"),
      ),
      body:const Text('我是休闲区',style: TextStyle(fontSize: 40.0),),
    );
  }
}
