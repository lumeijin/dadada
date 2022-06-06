import 'package:flutter/material.dart';
import '../customed_widget/doodle.dart';
import 'package:random_color/random_color.dart';

class LifePage extends StatefulWidget {
  const LifePage({Key? key}) : super(key: key);

  @override
  State<LifePage> createState() => _LifePageState();
}

class _LifePageState extends State<LifePage> {

  List<Frame> frames = [Frame([],Colors.red)];
  int currentFrame = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("生活区"),
      ),
      body:Column(children: [
         const Center(
            child: Text('涂鸦板',style: TextStyle(fontSize: 40.0),
            ),
        ),
        Flexible(
          child: Center(
            child: CustomPaint(
              painter: Doodle(frames: frames),
              child: GestureDetector(
                onPanStart: (details){
                  /// 开始绘制 可以初始化一些配置
                  Color _randomColor = RandomColor().randomColor();
                  frames[currentFrame].color = _randomColor;
                },
                onPanUpdate: (details){
                  /// 拖动更新
                  // RenderObject? renderBox = context.findRenderObject();
                  Offset currentPoint = details.localPosition;
                  setState(() {
                    frames[currentFrame].points.add(currentPoint);
                  });
                },
                onPanEnd: (details){
                  Color _randomColor = RandomColor().randomColor();
                  frames.add(Frame([],_randomColor));
                  currentFrame++;
                },
              ),
            ),
          ),
        ),
      ]
      ),
    );
  }
}


