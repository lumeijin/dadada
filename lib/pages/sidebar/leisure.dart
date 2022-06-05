import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeisurePage extends StatefulWidget {
  const LeisurePage({Key? key}) : super(key: key);

  @override
  State<LeisurePage> createState() => _LeisurePageState();
}

class _LeisurePageState extends State<LeisurePage> with SingleTickerProviderStateMixin{
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 100.0,end: 300.0).animate(controller)
    ..addStatusListener((status) {
      print("$status");
    });
    controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("休闲区"),
      ),
      body: AnimatedLogo(animation:animation),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}


class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
        child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: animation.value,
      width: animation.value,
      child: const FlutterLogo(),
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
    ));
  }
}
