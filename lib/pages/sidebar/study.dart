
import 'package:flutter/material.dart';

class StudyPage extends StatelessWidget {
  var list=[];
  StudyPage({Key? key}) : super(key: key){
    for (var i = 0; i < 18; i++) {
      list.add("元神${i + 1}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("学习区"),
      ),
      body:Center(
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  //头像半径
                  radius: 60,
                  //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                  backgroundImage: AssetImage(
                    'images/ys${index + 1}.png',
                  ),
                ),
                title: Text(
                  "元神${index + 1}",
                  style: const TextStyle(fontSize: 28),
                ),
                subtitle: Text("详细说明${index + 1}"),
              );
            }),
      )
    );
  }
}
