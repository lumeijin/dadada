import 'package:flutter/material.dart';
class BaiTan extends StatefulWidget {
  const BaiTan({Key? key}) : super(key: key);

  @override
  State<BaiTan> createState() => _BaiTanState();
}

class _BaiTanState extends State<BaiTan> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("我是摆摊tabview"),
    );
  }
}
