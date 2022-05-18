import 'package:flutter/material.dart';
import '../../res/listData.dart';


class HomePage extends StatelessWidget {
  List list = [];

  HomePage({Key? key}) : super(key: key) {
    for (var i = 0; i < 18; i++) {
      list.add("元神${i + 1}");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
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
    );
  }
}


class GridViewLayout extends StatelessWidget {
  List<Widget> _getDataList() {
    var tempList = listData.map((value) {
      return Container(
          child: Column(
            children: <Widget>[
              Image.asset(value["imageUrl"]),
              const SizedBox(height: 12),
              Text(value["title"],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20.0)),
            ],
          ),
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(230, 230, 230, 0.9),
                  width: 1.0)));
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: EdgeInsets.all(20),
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      // childAspectRatio:0.7,
      children: _getDataList(),
    );
    // throw UnimplementedError();
  }
}
