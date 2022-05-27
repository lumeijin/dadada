import 'package:flutter/material.dart';
import '../res/listdata.dart';

class GridViewLayout extends StatelessWidget {
  const GridViewLayout({Key? key}) : super(key: key);

  List<Widget> _getDataList() {
    var tempList = listData.map((value) {
      return Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Image.asset(value["imageUrl"]),
              ),
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
      padding: const EdgeInsets.all(20),
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      // childAspectRatio:0.7,
      children: _getDataList(),
    );
    // throw UnimplementedError();
  }
}
