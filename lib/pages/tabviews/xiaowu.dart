import 'package:flutter/material.dart';
class XiaoWu extends StatefulWidget {
  const XiaoWu({Key? key}) : super(key: key);

  @override
  State<XiaoWu> createState() => _XiaoWuState();
}

class _XiaoWuState extends State<XiaoWu> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("我是校务tabview"),
    );
  }
}
