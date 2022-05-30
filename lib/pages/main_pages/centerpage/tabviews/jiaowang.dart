import 'package:flutter/material.dart';
class JiaoWang extends StatefulWidget {
  const JiaoWang({Key? key}) : super(key: key);

  @override
  State<JiaoWang> createState() => _JiaoWangState();
}

class _JiaoWangState extends State<JiaoWang> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("我是交往tabview"),
    );
  }
}
