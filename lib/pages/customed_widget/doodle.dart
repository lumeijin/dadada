import 'package:flutter/cupertino.dart';

class Doodle extends CustomPainter{
  /// 帧集合
  final List<Frame> frames;
  Doodle({required this.frames});

  /// 初始化画笔
  var lineP = Paint()
    ..strokeWidth = 5.0
    ..strokeCap = StrokeCap.round;

  @override
  void paint(Canvas canvas, Size size) {

    if (frames.isEmpty) return;

    for(int i = 0; i < frames.length; i++ ){
      lineP.color = frames[i].color;
      /// 当前frame 点集合
      List<Offset> currentPoints = frames[i].points;
      if (currentPoints.isEmpty) return;
      for (int j = 0; j < currentPoints.length - 1; j++) {
        /// 当前点&&后一个点
        canvas.drawLine(currentPoints[j], currentPoints[j+1], lineP);
      }
    }
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

///
/// @ClassName Frame
/// @Description 绘制的每帧,可以理解为绘制的每一笔
/// @Author waitwalker
/// @Date 2020-03-07
///
class Frame {
  /// 绘制的点集合
  List<Offset> points;
  Color color;
  Frame(this.points,this.color);
}